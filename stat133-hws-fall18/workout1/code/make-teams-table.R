# ===================================================================
# Title: Cleaning Data
# Description:  
#       This script performs cleaning tasks and transformation on 
#       various columns of the raw data file.
# Input(s): 'nba2018.csv'
# Output(s): 'nba2018-teams.csv','efficiency-summary.txt', 'teams-summary.txt' 
# Author: Jinghua Wu
# Data: 10-01-2018
# ===================================================================

#packages
library('dplyr')      # data wrangling
library('ggplot2')    # graphics
f = read.csv('../data/nba2018.csv', header=TRUE, stringsAsFactors=FALSE)
dat = f

#replace all "R" with 0
dat$experience[which(f$experience == 'R')] = 0
#convert column into integers
dat$experience = as.integer(dat$experience)

#Transform salary in millions
dat$salary = dat$salary / 1000000

#Relabel position factors using more descriptive names
dat$position[which(f$position=='C')] = 'center'
dat$position[which(f$position=='PF')] = 'power_fwd'
dat$position[which(f$position=='PG')] = 'point_guard'
dat$position[which(f$position=='SF')] = 'small_fwd'
dat$position[which(f$position=='SG')] = 'short_guard'

#Add new variables
dat = mutate(dat, missed_fg=(dat$field_goals_atts - dat$field_goals))
dat = mutate(dat, missed_ft=(dat$points1_atts - dat$points1))
dat = mutate(dat, rebounds=(dat$off_rebounds + dat$def_rebounds))
dat = mutate(dat, efficiency=(dat$points + dat$rebounds + dat$assists + dat$steals + dat$blocks - 
                             dat$missed_fg - dat$missed_ft - dat$turnovers) / 
                             dat$games)

#send the R output of summary(efficiency)  to efficiency-summary.txt
sink('../output/efficiency-summary.txt')
summary(dat$efficiency)
sink()

#Create nba2018-teams.csv
team = levels(as.factor(dat$team))
teams = data.frame(experience=dat$experience, salary=dat$salary, points3=dat$points3,
                   points2=dat$points2, points1=dat$points1, points=dat$points,
                   off_rebounds=dat$off_rebounds, def_rebounds=dat$def_rebounds,
                   assists=dat$assists, steals=dat$steals, blocks=dat$blocks,
                   turnovers=dat$turnovers, fouls=dat$fouls, efficiency=dat$efficiency)
teams = round(teams, 2)
teams = aggregate.data.frame(teams, list(dat$team), FUN=sum)

sink('../output/teams-summary.txt')
summary(teams)
sink()

#export teams to nba2018-teams.csv
write.csv(teams, file='../data/nba2018-teams.csv')

