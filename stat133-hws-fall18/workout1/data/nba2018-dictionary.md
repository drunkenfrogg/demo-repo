## Data Dictionary: `nba2018.csv`

`nba2018.csv` contains data of all NBA players and their achievement in the 2018 season. There are 478 rows and 38 columns in this file.  

#### Description of the R objects in `nba2018.csv`:
| Name      | Description | Unit of Measurement | Possible Missing Values
|-----------|-------------|---------------------|------------------------
|`player`| first and last names of player | character | NONE
|`number`| number on jersey | numeric value |   NONE
|`team` | 3-letter team abbreviation | character  |   NONE
|`position`| player’s position | character  | NONE
|`height`| height in feet-inches | numeric value in feet-inches | NONE
|`weight`| weight in pounds |numeric value in pound| NONE
|`birth_date`| date of birth | Month day, year | NONE
|`country`| 2-letter country abbreviation | character   | NONE   |
|`experience`| years of experience in NBA | numeric value indicating year | a value of R means rookie, will convert to 0 year
|`college`| attended college in USA | character  | empty value
|`salary`| player salary in dollars | dollar (will convert to millions) | NONE
|`rank`| Rank of player in his team | numeric value indicating rank | NONE
|`age`| Age of Player at the start of February 1st of that season. | numeric value indicating year | NONE
|`games`| Games Played furing regular season | numeric value indicating how many games | NONE
|`games_started`| Games Started | numeric value indicating how many games  | NONE
|`minutes`| Minutes Played during regular season | minute | NONE
|`field_goals`| Field Goals Made | numeric value indicating number of field goals| NONE
|`field_goals_atts`| Field Goal Attempts | numeric value indicating number of attempts | NONE
|`field_goals_perc`| Field Goal Percentage | numeric value | NA value
|`points3`| 3-Point Field Goals | numeric value | NONE
|`points3_atts`| 3-Point Field Goal Attempts | numeric value | NONE
|`points3_perc`| 3-Point Field Percentage | numeric value | NA value
|`points2`| 2-Point Field Goals | numeric value | NONE
|`points2_atts`| 2-Point Field Goal Attempts | numeric value | NONE
|`points2_perc`| 2-Point Field Goal Percentage | numeric value | NA value
|`effective_field_goal_perc`| E ective Field Goal Percentage | numeric value | NA value
|`points1`| Free Throws Made | numeric value | NONE
|`points1_atts`| Free Throw Attempts | numeric value | NONE
|`points1_perc`| Free Throw Percentage | numeric value | NA value
|`off_rebounds`| O ensive Rebounds | numeric value | NONE
|`def_rebounds`| Defensive Rebounds | numeric value | NONE
|`assists`| Assists | numeric value | NONE
|`steals`| Steals | numeric value | NONE
|`blocks`| Blocks |numeric value |NONE
|`turnovers`| numeric value | numeric value | NONE
|`fouls`| Fouls | numeric value |NONE
|`points`| Total points| numeric value |NONE

#### Sources:

- Main source: [Basketball Stats and History](https://www.basketball-reference.com)
- Sample link for [Golden State Warriors](https://www.basketball-reference.com/teams/GSW/2018.html) data source
