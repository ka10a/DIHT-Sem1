SELECT point, SUM(R) AS Remain
FROM (
SELECT ISNULL(Income_o.point, Outcome_o.point) AS point, ISNULL(Income_o.inc, 0)-ISNULL(Outcome_o.out,0) AS R
FROM Income_o FULL JOIN Outcome_o ON Income_o.point = Outcome_o.point AND Income_o.date = Outcome_o.date) as t
GROUP BY point
