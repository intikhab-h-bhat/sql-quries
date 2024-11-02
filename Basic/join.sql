
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


-- List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
select mdate,teamname from game join eteam
on team1=eteam.id 
where coach='Fernando Santos'



--  List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
select player from goal join game 
on id=matchid where stadium ='National Stadium, Warsaw'

-- show the name of all players who scored a goal against Germany.
SELECT distinct player
  FROM game JOIN goal ON matchid = id 
    WHERE (teamid!='GER' and (team1 ='GER' or team2='GER'))