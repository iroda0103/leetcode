-- https://leetcode.com/problems/rank-scores
SELECT
    score,
    DENSE_RANK() OVER(
        ORDER BY
            score DESC
    ) rank
from
    Scores