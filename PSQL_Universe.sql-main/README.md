# ERD diagram:

![ERD d](https://github.com/KnEl1a/PostgreSQL-GIT-BashScript/blob/main/ERD%20diagrams/ERD%20Universe.png)

# Universe Database

This repository contains the PostgreSQL database dump for the "Universe" database, which includes several tables representing various celestial bodies such as galaxies, stars, planets, moons, and supernovas. The database was created as part of a FreeCodeCamp project.

## Database Information

- **Database Version:** 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
- **Dumped By:** pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

## Tables

### 1. SuperNova
- **Columns:** 
  - `SuperNova_id` (integer, NOT NULL, PRIMARY KEY)
  - `name` (character varying, NOT NULL)
  - `age` (integer, NOT NULL)
  - `distance_from_earth` (integer, UNIQUE)
  - `age_in_millions_of_years` (numeric)
  - `is_spherical` (boolean)
  - `hase_life` (boolean)
  - `description` (text)
  - `galaxy_id` (integer, FOREIGN KEY)

### 2. Galaxy
- **Columns:**
  - `galaxy_id` (integer, NOT NULL, PRIMARY KEY)
  - `name` (character varying, NOT NULL)
  - `age` (integer, NOT NULL)
  - `distance_from_earth` (integer, UNIQUE)
  - `age_in_millions_of_years` (numeric)
  - `is_spherical` (boolean)
  - `hase_life` (boolean)
  - `description` (text)

### 3. Moon
- **Columns:**
  - `moon_id` (integer, NOT NULL, PRIMARY KEY)
  - `name` (character varying, NOT NULL)
  - `age` (integer, NOT NULL)
  - `distance_from_earth` (integer, UNIQUE)
  - `age_in_millions_of_years` (numeric)
  - `is_spherical` (boolean)
  - `hase_life` (boolean)
  - `description` (text)
  - `planet_id` (integer, FOREIGN KEY)

### 4. Planet
- **Columns:**
  - `planet_id` (integer, NOT NULL, PRIMARY KEY)
  - `name` (character varying, NOT NULL)
  - `age` (integer, NOT NULL)
  - `distance_from_earth` (integer, UNIQUE)
  - `age_in_millions_of_years` (numeric)
  - `is_spherical` (boolean)
  - `hase_life` (boolean)
  - `description` (text)
  - `star_id` (integer, FOREIGN KEY)

### 5. Star
- **Columns:**
  - `star_id` (integer, NOT NULL, PRIMARY KEY)
  - `name` (character varying, NOT NULL)
  - `age` (integer, NOT NULL)
  - `distance_from_earth` (integer, UNIQUE)
  - `age_in_millions_of_years` (numeric)
  - `is_spherical` (boolean)
  - `hase_life` (boolean)
  - `description` (text)
  - `galaxy_id` (integer, FOREIGN KEY)

## Constraints

### Unique Constraints
- `SuperNova.distance_from_earth_key`
- `galaxy.distance_from_earth_key`
- `moon.distance_from_earth_key`
- `planet.distance_from_earth_key`
- `star.distance_from_earth_key`

### Foreign Key Constraints
- `SuperNova.galaxy_id_fkey` (References `galaxy.galaxy_id`)
- `moon.planet_id_fkey` (References `planet.planet_id`)
- `planet.star_id_fkey` (References `star.star_id`)
- `star.galaxy_id_fkey` (References `galaxy.galaxy_id`)

## Sample Data

The database includes sample data for each table, providing a mock representation of various celestial objects and their properties.

### SuperNova Sample Data
| SuperNova_id | name | age | distance_from_earth | age_in_millions_of_years | is_spherical | hase_life | description | galaxy_id |
|--------------|------|-----|---------------------|--------------------------|--------------|-----------|-------------|-----------|
| 1            | qq   | 1   | 1                   | 1                        | true         | true      | qq          | 1         |
| 2            | ww   | 1   | 2                   | 1                        | true         | true      | ww          | 2         |
...

### Galaxy Sample Data
| galaxy_id | name  | age | distance_from_earth | age_in_millions_of_years | is_spherical | hase_life | description |
|-----------|-------|-----|---------------------|--------------------------|--------------|-----------|-------------|
| 1         | asdx  | 1   | 1                   | 1                        | true         | true      | asdx        |
| 2         | asdff | 1   | 2                   | 1                        | true         | true      | asdff       |
...

