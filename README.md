
Problem Statement
System for Managing Employee Records, Departments, and Projects

In a modern organizational context, effective management of employee records, departmental structures, and associated projects is crucial. This database management system is designed to handle the complexities of human resources by storing detailed information about employees,including their roles, salaries, and project assignments, their respective departments, and the projects they are working on. The system aims to enhance operational efficiency, facilitate reporting, and ensure clear visibility into workforce management.

These commands create three tables: departments, employees, and projects. Each table is designed with relevant fields, and foreign key relationships are established to maintain data integrity.


Purpose of inserting : The above commands populate the departments, employees, and projects tables with initial data, reflecting the organizational structure and active projects.


Purpose: This command updates Alice Johnson's salary by increasing it by $5000, reflecting a merit increase.

Purpose: This command deletes the "Website Redesign" project from the projects table, indicating it is no longer active.

Purpose: This command grants the project_manager user permission to select and insert data into the employees table.


Explanation of Results and Transactions
Table Creation
The tables departments, employees, and projects were successfully created. The foreign key constraints ensure that every employee belongs to a valid department and that every project is associated with a valid employee.
Data Insertion
Data was successfully inserted into all three tables. The results reflect the organization’s structure, with employees linked to their respective departments and assigned to specific projects.
Update Transaction
The update command executed successfully, increasing Alice Johnson's salary. This demonstrates the ability to modify existing records effectively.
Deletion
The deletion command successfully removed the specified project from the database, confirming that the system can handle record removal.
Privileges Management
The granting of privileges to the system user was successful, demonstrating that access control mechanisms can be effectively implemented to manage who can interact with the database.
