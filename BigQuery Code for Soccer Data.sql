-- Showing player count on world map
SELECT
  League, Nationality, COUNT(Nationality) as PlayerCount
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY  
  League, Nationality
ORDER BY
  Nationality

-- Showing total goals scored by league
SELECT
  SUM(Gls) as TotalGoals, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  League
ORDER BY
  TotalGoals DESC

-- Showing average goals scored in PL & LL & SA
SELECT
  SUM(Gls)/380 as AvgGlsPerGame, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  League
ORDER BY
  AvgGlsPerGame DESC

-- Showing average goals scored in Bundesliga & Ligue 1
SELECT
  SUM(Gls)/340 as AvgGlsPerGame, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Ligue 1' OR League = 'Bundesliga'
GROUP BY
  League
ORDER BY
  AvgGlsPerGame DESC

--Showing highest scoring squad
SELECT
  SUM(Gls) as TotalGoals, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  Squad, League
ORDER BY
  TotalGoals DESC

-- Showing average goals scored by Squad in PL & LL & SA
SELECT
  SUM(Gls)/38 as AvgGlsPerGame, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  Squad, League
ORDER BY
  AvgGlsPerGame DESC

-- Showing average goals scored by Squad in Bundesliga & Ligue 1
SELECT
  SUM(Gls)/34 as AvgGlsPerGame, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Ligue 1' OR League = 'Bundesliga'
GROUP BY
  Squad, League
ORDER BY
  AvgGlsPerGame DESC

--Shows goals scored by players and scoring efficiency in PL & LL & SA
SELECT
  Player, Squad, Position, Gls, xG, (Gls-xG) as xGDiff, SUM(Gls)/38 as AvgGlsPerGame
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  Player, Squad, Position, Gls, xG
ORDER BY
  xGDiff DESC

--Shows goals scored by players and scoring efficiency in BL & L1
SELECT
  Player, Squad, Position, Gls, xG, (Gls-xG) as xGDiff, SUM(Gls)/34 as AvgGlsPerGame
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  Player, Squad, Position, Gls, xG
ORDER BY
  xGDiff DESC

--Showing Total red cards given by league
SELECT
  SUM(CrdR) as TotalRedCards, league
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  League
ORDER BY
  TotalRedCards DESC

--Showing average red cards given in PL & LL & SA
SELECT
  SUM(CrdR)/380 as AvgRedCardsPerGame, league
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  League
ORDER BY
  AvgRedCardsPerGame DESC

--Showing average red cards given in BL & L1
SELECT
  SUM(CrdR)/340 as AvgRedCardsPerGame, league
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  League
ORDER BY
  AvgRedCardsPerGame DESC

--Showing Total red cards received by Squad
SELECT
  SUM(CrdR) as TotalRedCards, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  Squad, League
ORDER BY
  TotalRedCards DESC

--Showing average red cards received by Squad in PL & LL & SA
SELECT
  SUM(CrdR)/38 as AvgRedCardsPerGame, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  Squad, League
ORDER BY
  AvgRedCardsPerGame DESC

--Showing average red cards received by Squad in BL & L1
SELECT
  SUM(CrdR)/34 as AvgRedCardsPerGame, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  Squad, League
ORDER BY
  AvgRedCardsPerGame DESC

--Showing Total red cards received by Player
SELECT
  SUM(CrdR) as TotalRedCards, Player, Position, Squad
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  Player, Position, Squad
ORDER BY
  TotalRedCards DESC

--Showing average red cards received by player in PL & LL & SA
SELECT
  SUM(CrdR)/38 as AvgRedCardsPerGame, Player, Position, Squad
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  Player, Position, Squad
ORDER BY
  AvgRedCardsPerGame DESC

--Showing average red cards received by player in BL & L1
SELECT
  SUM(CrdR)/34 as AvgRedCardsPerGame, Player, Position, Squad
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  Player, Position, Squad
ORDER BY
  AvgRedCardsPerGame DESC

--Showing Total cards received by League
SELECT
  SUM(CrdR+CrdY) as TotalReceivedCards, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  League
ORDER BY
  TotalReceivedCards DESC

--Showing average cards per game in PL & LL & SA
SELECT
  SUM(CrdR+CrdY)/380 as AverageCardsPerGame, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  League
ORDER BY
  AverageCardsPerGame DESC

--Showing average cards per game in BL & L1
SELECT
  SUM(CrdR+CrdY)/340 as AverageCardsPerGame, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  League
ORDER BY
  AverageCardsPerGame DESC

--Showing Total cards received by Squad
SELECT
  SUM(CrdR+CrdY) as TotalReceivedCards, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  Squad, League
ORDER BY
  TotalReceivedCards DESC

--Showing average cards received by Squad in PL & LL & SA
SELECT
  SUM(CrdR+CrdY)/38 as AverageReceivedCards, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  Squad, League
ORDER BY
  AverageReceivedCards DESC

--Showing average cards received by Squad in BL & L1
SELECT
  SUM(CrdR+CrdY)/34 as AverageReceivedCards, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  Squad, League
ORDER BY
  AverageReceivedCards DESC

--Showing total cards received by player
SELECT
  SUM(CrdR+CrdY) as TotalReceivedCards, Player, Squad
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  Player, Squad
ORDER BY
  TotalReceivedCards DESC

--Showing average cards received by player in PL & LL & SA
SELECT
  SUM(CrdR+CrdY)/38 as AvgReceivedCards, Player, Squad
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  Player, Squad
ORDER BY
  AvgReceivedCards DESC

--Showing average cards received by player in BL & L1
SELECT
  SUM(CrdR+CrdY)/34 as AvgReceivedCards, Player, Squad
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  Player, Squad
ORDER BY
  AvgReceivedCards DESC

--Showing total penalties given by league
SELECT
  SUM(PKatt) as TotalPkGiven, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  League
ORDER BY
  TotalPkGiven DESC

--Showing average penalties given in PL & LL & SA
SELECT
  SUM(PKatt)/380 as AvgPkGivenPerGame, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  League
ORDER BY
  AvgPkGivenPerGame DESC

--Showing average penalties given in BL & L1
SELECT
  SUM(PKatt)/340 as AvgPkGivenPerGame, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  League
ORDER BY
  AvgPkGivenPerGame DESC

--Showing total penalties received by squad
SELECT
  SUM(PKatt) as TotalPkReceived, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
GROUP BY
  Squad, League
ORDER BY
  TotalPkReceived DESC

--Showing average penalties received by squad in PL & LL & SA
SELECT
  SUM(PKatt)/38 as AvgPkReceived, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Premier League' OR League = 'La Liga' OR League = 'Serie A'
GROUP BY
  Squad, League
ORDER BY
  AvgPkReceived DESC

--Showing average penalties received by squad in BL & L1
SELECT
  SUM(PKatt)/34 as AvgPkReceived, Squad, League
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  League = 'Bundesliga' OR League = 'Ligue 1'
GROUP BY
  Squad, League
ORDER BY
  AvgPkReceived DESC

--Showing penalty conversion rate by player
SELECT
  Player, Squad, PK, PKatt, (PK/PKatt) as ConversionRate
FROM
  my-first-project-18235.Football_Player_Stats_Top_5_Leagues.Player_Stats_24_25_Season
WHERE
  PKatt > 0
GROUP BY
  Player, Squad, PK, PKatt
ORDER BY
  PKatt DESC
