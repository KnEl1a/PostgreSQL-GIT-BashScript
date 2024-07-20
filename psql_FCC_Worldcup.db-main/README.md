# ERD diagram

![ERD GGG](https://github.com/KnEl1a/PostgreSQL-GIT-BashScript/blob/main/ERD%20diagrams/ERD%20diagram.png)

----

### World Cup Database Setup

This SQL script sets up a PostgreSQL database for storing and managing World Cup match data. It includes the creation of the `worldcup` database, schema definitions for tables, sequences for primary key generation, and insertion of sample data. The database schema is designed to keep track of teams and their performance in various World Cup matches.

#### Script Overview

- **Database Configuration**: Sets up initial PostgreSQL configurations to ensure compatibility and optimal performance.
- **Database Creation**: Drops any existing `worldcup` database and creates a new one with UTF-8 encoding.
- **Table Definitions**:
  - **Teams**: Stores team information with `team_id` as the primary key and `name` as a unique constraint.
  - **Games**: Stores game information, including game ID, year, round, participating teams, and scores.
- **Sequences**: Creates sequences to auto-generate primary keys for the `teams` and `games` tables.
- **Data Insertion**: Inserts sample data into the `teams` and `games` tables for demonstration purposes.
- **Constraints**:
  - Primary key constraints for `teams` and `games`.
  - Foreign key constraints in the `games` table to reference team IDs from the `teams` table.
- **Indexes**: Ensures efficient querying by creating necessary indexes on primary and unique keys.

#### Usage

To set up the World Cup database, execute this script in a PostgreSQL environment. It will initialize the database and populate it with sample data, allowing for immediate querying and analysis.

---

#### Example of Usage

1. **Run the Script**: Execute the script in your PostgreSQL environment to create the `worldcup` database and its tables.
2. **Query the Data**: Use standard SQL queries to explore the data, such as finding matches, teams, and scores.

```sql
-- Example Query: Find all matches from 2018
SELECT * FROM public.games WHERE year = 2018;

-- Example Query: List all teams
SELECT * FROM public.teams;
```

By following these steps, you can easily set up and start using the World Cup database for your projects or analysis.
