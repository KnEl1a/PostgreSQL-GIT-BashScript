# ERD Diagram:
[ERD dd](https://github.com/KnEl1a/PostgreSQL-GIT-BashScript/blob/main/ERD%20diagrams/ERD%20elements.png)

# Periodic Table
Project/ Problem: [BootCamp](https://www.freecodecamp.org/learn/relational-database/build-a-periodic-table-database-project/build-a-periodic-table-database)

[![pexels-rdne-stock-project-7755503.jpg](https://i.postimg.cc/15hw6SxQ/pexels-rdne-stock-project-7755503.jpg)](https://postimg.cc/YjRvKJqn)


## PSQL - Description : 
This file .sql is a PostgreSQL database dump for a schema named "periodic_table". It contains the structure and data for three tables:
* **elements:** This table stores information about chemical elements, including their atomic number (unique identifier), symbol (abbreviation), and name.
* **properties:** This table stores various properties of elements, including atomic mass, melting and boiling points in Celsius, and a foreign key referencing the "type_id" from the "types" table.
* **types:** This table defines different types of elements, with each type having a unique identifier and a name (e.g., "metal", "nonmetal").

**Key Points:**

* The dump script sets various configuration parameters for the database session.
* It creates the database "periodic_table" and sets the owner to the user "postgres".
* It then creates the three tables mentioned above with their respective columns and data types.
* The script inserts sample data for each element, including its properties and type.
* Several constraints are defined to ensure data integrity:
    * Primary keys enforce unique identification for each row in a table (atomic_number for elements and properties, type_id for types).
    * Unique constraints guarantee that element names and symbols are distinct.
    * Foreign keys link the "properties" table to the "elements" and "types" tables, ensuring data consistency.


 ## Bash Script - Description: 

 #### Script description for this Git repository

This Bash script 'element.sh' searches for information about a chemical element in a PostgreSQL database named "periodic_table". It takes an element name or atomic number as an argument and outputs details about the element if found.

**Features:**

* Accepts element name or atomic number as input.
* Queries the database for element information using `psql`.
* Handles both exact atomic number and name/symbol search.
* Provides informative output with element details.
* Informs the user if no element is found in the database.

**Usage:**

```
./element.sh <element_name_or_atomic_number>
```

**Example:**

```
./element.sh Hydrogen
```

**Output:**

```
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
```

