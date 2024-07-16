# Number Guess Game

Project/ Problem: [BootCamp](https://www.freecodecamp.org/learn/relational-database/build-a-number-guessing-game-project/build-a-number-guessing-game)

[![pexels-black-ice-1314543.jpg](https://i.postimg.cc/yYQr5Q4Q/pexels-black-ice-1314543.jpg)](https://postimg.cc/ykRP3TNc)

## PSQL - Description : 

**Database Schema for Number Guessing Game**

This repository contains a PostgreSQL database schema designed to support a number guessing game application. The schema defines a table named "games" that tracks user information and game statistics:

* **username (character varying(22))**: Stores the username of the player.
* **games_played (integer)**: Keeps a count of the total games played by the user.
* **best_game (integer)**: Records the lowest number of guesses it took the user to win a game.

**Functionality**

If your code interacts with this database schema, you can elaborate on how the application leverages the tables and data:

* Users can register or log in, and their information is stored in the database.
* The application tracks the number of games played by each user.
* It also keeps a record of the user's best game (fewest guesses to win).

**Additional Notes**

* This script provides a starting point for the database structure. You might need to modify it based on your specific game implementation.
* Consider including instructions on how to import the schema into a PostgreSQL database if applicable.

**Key Points:**

* Focuses on the functionality and purpose of the database schema.
* Avoids directly including the script content.
* Provides context for developers using the repository.
* Offers guidance for potential modifications or usage instructions (optional).


 ## Bash Script - Description: 

**Gameplay:**

* Players are prompted to enter their username.
* If the username is new, a welcome message is displayed, and a new entry is created in the database to track their games and best score.
* Existing players are greeted with their previous game statistics (number of games played, best score).
* The script generates a random secret number between 1 and 1000.
* Players attempt to guess the secret number within an infinite loop (until they guess correctly).
* After each guess, the script provides feedback:
    * If the guess is not an integer, an error message is displayed.
    * If the guess is lower or higher than the secret number, a hint is given.
* Upon a successful guess, the script congratulates the player, displays the number of guesses it took, and updates the player's best score (if the current guess count is lower) in the database.

**Database Integration:**

* The script assumes the existence of a PostgreSQL database named "number_guess" with a table named "games" to store player data.
* The table structure should include columns for username, games_played, and best_game.
* If you don't have this database set up, you'll need to create it and the table before running the script.

**Additional Considerations:**

* The script currently uses an infinite loop for the guessing process. You might consider implementing an alternative like a set number of attempts or a time limit.
* Error handling can be further improved to handle potential database connection issues or unexpected user input.

**Getting Started:**

* Ensure you have Bash installed and a working PostgreSQL database with the "number_guess" table.
* Adjust the script's database connection details (username, database name) if necessary.
* Make the script executable using `chmod +x number_guessing_game.sh` (replace with your script's filename).
* Run the script using `./number_guessing_game.sh`. 
