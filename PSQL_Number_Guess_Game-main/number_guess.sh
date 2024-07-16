#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
#funcion de definicion
SECRET_N=$(( ( RANDOM % 1000 )  + 1 )) #numero aleatorio
echo $SECRET_N
GUESSES=0
echo -e "Enter your username:"
read NAME
  USERNAME=$($PSQL "SELECT username FROM games WHERE username='$NAME'")
  if [[ -z $USERNAME ]] # si no hay [-z] en "username" nada entonces ...
  then 
    USERNAME=$NAME
    B=1000 # numero limitesfds
    echo $($PSQL "INSERT INTO games(username, games_played, best_game) VALUES ('$USERNAME', 1, 1000)")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM games WHERE username='$USERNAME'")
    B=$($PSQL "SELECT best_game FROM games WHERE username='$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $B guesses."
    ((GAMES_PLAYED++))
    echo $($PSQL "UPDATE games SET games_played=$GAMES_PLAYED WHERE username='$USERNAME'")
  fi
echo -e "Guess the secret number between 1 and 1000:"
while true
do
  read GUESS
  ((GUESSES++)) # cont / contador
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "That is not an integer, guess again:"
  else 
    if [[ $GUESS -lt $SECRET_N ]] 
    then
      echo -e "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_N ]]
    then
      echo -e "It's lower than that, guess again:"
    else 
      if [[ $GUESSES -lt $B ]]
      then
        echo $($PSQL "UPDATE games SET best_game=$GUESSES WHERE username='$USERNAME'")
      fi
      echo -e "You guessed it in $GUESSES tries. The secret number was $SECRET_N. Nice job!"
      exit # asdfsdfa 
    fi
  fi
done 
}
#asdf
#adsfd
#asdfsd
#asdfas