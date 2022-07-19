#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  if [[ $winner != "name" ]]
  then
    # get team_id
    team_id=$($PSQL "SELECT DISCTINT(team_id) FROM teams WHERE name LIKE '$winner'")

    # if not found
    if [[ -z $team_id ]]
    then
      # insert WINNER result
      INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $winner
      fi
      # opponent entries
  if [[ $opponent != "name" ]]
  then
    # get team_id
    team_id2=$($PSQL "SELECT DISCTINT (team_id) FROM teams WHERE name LIKE'$opponent'")

    # if not found
    if [[ -z $team_id2 ]]
    then
      # insert name 2
      INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $opponent
      fi
      echo $($PSQL "DELETE FROM teams WHERE name LIKE 'winner'")
      echo $($PSQL "DELETE FROM teams WHERE name LIKE 'opponent'")
    fi
    fi
  fi
  fi
done
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
    # get winner id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name LIKE '$WINNER';")
    # get opponent id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name LIKE '$OPPONENT';")
    if [[ $YEAR != "year" ]]
    then 
        # insert game
        INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$WINNER_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS');")
          if [[ $INSERT_GAME = 'INSERT 0 1' ]]
          then
              echo "Inserted Game results "
          fi
    else
      echo 'Unable to insert game.'
    fi
done