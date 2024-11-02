
-- show the player, teamid, stadium and mdate for every German goal.
SELECT player,teamid,stadium,mdate
  FROM game ga JOIN goal go ON (ga.id=go.matchid)
where teamid='GER'



-- Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'

select team1,team2,player from game inner join 
goal on id=matchid
 where 
player like 'Mario%'


-- Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10
SELECT player, teamid,coach,gtime
  FROM goal join eteam on teamid=id
 WHERE gtime<=10