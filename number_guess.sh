#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

DISPLAY() {
  echo -e "\n~~~~~ Number Guessing Game ~~~~~\n" 

  # Get username
  echo "Enter your username:"
  read USERNAME

  # Get user_id from database
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

  # If user exists
  if [[ $USER_ID ]]; then
    # Get games played from users table
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE user_id = '$USER_ID'")

    # Get best game (smallest number of guesses)
    BEST_GUESS=$($PSQL "SELECT best_game FROM users WHERE user_id = '$USER_ID'")

    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
  else
    # If user does not exist, insert into users table
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    INSERTED_TO_USERS=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 0, NULL)")
    
    # Get newly inserted user_id
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  fi

  GAME
}

GAME() {
  # Secret number
  SECRET=$((1 + $RANDOM % 1000))

  # Count guesses
  TRIES=0

  # Start guessing
  echo -e "\nGuess the secret number between 1 and 1000:"

  while true; do
    read GUESS

    # If not a number
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo -e "\nThat is not an integer, guess again:"
    elif [[ $GUESS -eq $SECRET ]]; then
      TRIES=$((TRIES + 1))
      echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"

      # Insert game result into games table
      INSERTED_TO_GAMES=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)")

      # Update games played
      UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE user_id = $USER_ID")

      # Update best game if it's the user's best performance
      UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game = LEAST(best_game, $TRIES) WHERE user_id = $USER_ID AND (best_game IS NULL OR $TRIES < best_game)")

      break
    elif [[ $GUESS -lt $SECRET ]]; then
      TRIES=$((TRIES + 1))
      echo -e "\nIt's higher than that, guess again:"
    else
      TRIES=$((TRIES + 1))
      echo -e "\nIt's lower than that, guess again:"
    fi
  done
}

DISPLAY
