## Lab Task 1: Student Management System

### Entity: Student

**Attributes:**

1. **Id (int):**

   - Required
   - Not null

2. **Name (varchar2(100)):**

   - Required

3. **Email (varchar2(100)):**

   - Required
   - Should be a valid email address

4. **Date of Birth (date):**

   - Required
   - Must be 18 years old or above

5. **Gender:**

   - Required
   - Allowed values: MALE, FEMALE

6. **Quota (Checkbox):**

   - varchar2(10)
   - Required
   - Default value: "N/A"

7. **Country (Dropdown):**
   - varchar2(100)
   - Required
   - Default value: "Bangladeshi"

**Validation:**

- Use Hibernate Validator to validate all fields.

### Endpoints:

1. **List all Students:**

   - Endpoint: `/students`
   - Method: GET
   - Description: Show a list of all students.

2. **View Student Details:**

   - Endpoint: `/students/{id}`
   - Method: GET
   - Description: Show the details of a specific student identified by `{id}`.

3. **Edit Student:**

   - Endpoint: `/students/{id}/edit`
   - Method: GET
   - Description: Show a specific student in an update form.

4. **Delete Student:**
   - Endpoint: `/students/{id}/delete`
   - Method: GET
   - Description: Delete a specific student identified by `{id}`.

### Lab Task Report:

#### Lab Task Objective:

The objective of this lab task is to create a Student Management System with the following features:

- Create a `Student` entity with specified attributes and use Hibernate Validator for validation.
- Implement RESTful API endpoints for listing all students, viewing student details, editing a student, and deleting a student.

#### Implementation Details:

**1. Student Entity:**

- Created a `Student` entity class with the specified attributes.
- Utilized Hibernate Validator annotations for field validation.

**2. RESTful Endpoints:**

- Created controllers for listing all students, viewing student details, editing a student, and deleting a student.

**3. Validation:**

- Utilized Hibernate Validator for validating the `Student` entity fields.

**4. Frontend Integration:**

- Integrated the backend with frontend pages for user interaction.
- Developed pages for listing all students, viewing student details, updating student information, and confirming deletion.

**Conclusion:**
The implementation of the Student Management System has been successfully completed. The system provides essential CRUD operations with proper validation using Hibernate Validator.

This lab task demonstrates proficiency in Java, Spring, Hibernate, and frontend integration, showcasing the ability to create a functional and validated Student Management System.
