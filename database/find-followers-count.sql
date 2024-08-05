-- https://leetcode.com/problems/find-followers-count/?envType=study-plan-v2&envId=top-sql-50
SELECT
    user_id,
    count(follower_id) followers_count
FROM
    Followers
GROUP BY
    user_id
order by
    user_id