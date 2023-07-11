#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo -e "\nEnter your username:"
read USERNAME

# Try to get the user's id.
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# If the user is new, store them in the database.
if [[ -z $USER_ID ]]
then
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

  # Get the new user id.
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # Get user data.
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id='$USER_ID'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id='$USER_ID'")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"
read USER_GUESS

NUMBER_OF_GUESSES=1

# Guess a new number until the secret number is found.
until [[ $USER_GUESS == $SECRET_NUMBER ]]
do
  # Ensure the input is an integer.
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"

    read USER_GUESS
    ((NUMBER_OF_GUESSES++))
  else
    # Give a hint to the user on whether the value is higher or lower.
    if [[ $USER_GUESS > $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"

      read USER_GUESS
      ((NUMBER_OF_GUESSES++))
    else
      if [[ $USER_GUESS < $SECRET_NUMBER ]]
      then
        echo "It's higher than that, guess again:"

        read USER_GUESS
        ((NUMBER_OF_GUESSES++))
      fi
    fi
  fi
done

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
