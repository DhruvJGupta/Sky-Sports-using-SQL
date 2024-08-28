#1
SELECT * from Sky_Sports ss ;
SELECT * FROM Sky_Sports1 ss ;


#2
SELECT DISTINCT team from Sky_Sports1 ss ;

#3
SELECT team from Sky_Sports1 ss WHERE `rank` =1 and `group` =7;

#4
SELECT COUNT(team) from Sky_Sports1 ss ;

#5
SELECT team,matches_played from Sky_Sports1 ss ;

#6
SELECT team,100.0*(wins/matches_played) as wins_percent from Sky_Sports1 ss ;

#7
SELECT team, goals_scored 
FROM Sky_Sports1 ss 
WHERE goals_scored = (SELECT MAX(goals_scored) FROM Sky_Sports1 ss2);

#8
SELECT team,ROUND( 100.0*(draws/matches_played),2) from Sky_Sports1 ss ;

#9
SELECT team,goals_scored
from Sky_Sports1 ss 
WHERE goals_scored =(SELECT MIN(goals_scored) from Sky_Sports1 ss2);

#10
SELECT team,100.0*(losses/matches_played) as losses_percent
from Sky_Sports1 ss 
order by losses_percent DESC ;

#11
SELECT AVG(goal_difference) from Sky_Sports1 ss; 

#12
SELECT team from Sky_Sports1 ss where points =0;

#13
SELECT * from Sky_Sports1 ss WHERE expected_goal_scored<exp_goal_conceded;

#14
 SELECT * from Sky_Sports1 ss WHERE exp_goal_difference between -0.5 and 0.5;

#15
SELECT * from Sky_Sports1 ss order by exp_goal_difference_per_90 DESC ;

#16
SELECT team,players_used
from Sky_Sports ss WHERE players_used = (Select MAX(players_used)from Sky_Sports ss2);

#17
SELECT team,avg_age from Sky_Sports ss order by avg_age ;

#18
SELECT AVG(possession) from Sky_Sports ss; 

#19
SELECT team,games 
from Sky_Sports ss 
where games >=5;

#20
SELECT * from Sky_Sports ss 
where minutes >600;

#21
SELECT team, goals, assists
from Sky_Sports ss 
order by goals ;

#22
SELECT team, pens_made, pens_att
from Sky_Sports ss 
order by pens_made DESC ;

#23
SELECT team, cards_yellow, cards_red
from Sky_Sports ss 
WHERE cards_red=1
ORDER BY cards_yellow;

#24
SELECT team, goals_per90, assists_per90, goals_assists_per90
from Sky_Sports ss 
order by goals_assists_per90 DESC ;

#25
SELECT team, goals_pens_per90, goals_assists_pens_per90
from Sky_Sports ss 
order by goals_assists_pens_per90 ASC;

#26
SELECT team, shots, shots_on_target, shots_on_target_pct 
from Sky_Sports ss 
WHERE shots_on_target_pct < 30
ORDER BY shots_on_target_pct ASC;

#27
SELECT team, shots_per90, shots_on_target_per90
from Sky_Sports ss 
where team ='Belgium';

#28
SELECT team, goals_per_shot, goals_per_shot_on_target, average_shot_distance
from Sky_Sports ss 
order by average_shot_distance DESC ;

#29
SELECT team, errors, touches
from Sky_Sports ss 
WHERE errors=0 AND touches<1500;

#30
SELECT team, fouls
from Sky_Sports ss 
WHERE fouls = (SELECT MAX(fouls) from Sky_Sports ss2);

#31
SELECT team,offsides 
from Sky_Sports ss 
WHERE offsides <10 or offsides >20;

#32
SELECT team, aerials_won, aerials_lost, aerials_won_pct
from Sky_Sports ss 
order by aerials_won_pct DESC ;

#33
SELECT 'group',COUNT(team) 
from Sky_Sports1 ss 
group by 'group' ;

#34
SELECT team,'group'
from Sky_Sports1 ss 
WHERE 'group'=6;

#35
SELECT team,`group` 
from Sky_Sports1 ss 
WHERE team ='Australia';

#36
SELECT 'group',AVG(wins)
from Sky_Sports1 ss
group by 'group';

#37
SELECT 'group',MAX(expected_goal_scored) as expected_goal_scored
from Sky_Sports1 ss 
group by 'group' 
order by expected_goal_scored ASC;

#38
SELECT 'group',MIN(exp_goal_conceded) as exp_goal_conceded
from Sky_Sports1 ss 
group by 'group'
order BY exp_goal_conceded DESC ;

#39
SELECT 'group',AVG(exp_goal_difference_per_90) as exp_goal_difference_per_90
from Sky_Sports1 ss 
group by `group` 
order by exp_goal_difference_per_90;

#40
SELECT team,goals_scored,goals_against
from  Sky_Sports1 ss
WHERE goals_scored=goals_against;

#41
SELECT team,players_used
from Sky_Sports ss 
WHERE players_used = (select MAX(players_used) from Sky_Sports ss2);

#42
SELECT team, players_used, avg_age, games, minutes 
from Sky_Sports ss 
WHERE minutes < 500 AND minutes > 200;

#43
SELECT * from Sky_Sports1 ss order by points ;

#44
SELECT DISTINCT (team) from Sky_Sports1 ss order by team ASC;










































