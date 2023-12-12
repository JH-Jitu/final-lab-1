package dev.controller;

import dev.domain.User;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.beans.PropertyEditorSupport;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

@Controller
public class FirstController {

    @InitBinder
    public void intiBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);

        DateValidator dateValidator = new DateValidator();
        webDataBinder.registerCustomEditor(LocalDate.class, dateValidator);
    }

    @RequestMapping("/first")
    public void first(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("q") == null ? "" : request.getParameter("q");
        PrintWriter printWriter = response.getWriter();
        printWriter.write("Hello Spring World!!!" + name);
    }

    @RequestMapping("/second")
    public String second() {
        /*System.out.println("I am invoked");*/
        return "first";
    }

    @RequestMapping("/third")
    public String third(Model model) {
        model.addAttribute("name", "Mir Md Kawsur");
        model.addAttribute("email", "kawsur@aiub.edu");
        return "first";
    }

    @RequestMapping("/fourth")
    public String fourth(Model model) {
        model.addAttribute("user", new User());
        return "registration";
    }

    @RequestMapping("/fifth")
    public String fifth(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) throws SQLException {
        if (bindingResult.hasErrors()) {
            return "registration";
        }
        else {
            return "confirm";
        }
    }

    public static class DateValidator extends PropertyEditorSupport {
        @Override
        public void setAsText(String text) throws IllegalArgumentException {
            LocalDate date = LocalDate.parse(text);
            date = date.plusDays(20);
            setValue(date);
        }
    }
}