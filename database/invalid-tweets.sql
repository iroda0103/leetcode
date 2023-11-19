-- https://leetcode.com/problems/invalid-tweets
select
    tweet_id
from
    Tweets
where
    Length(content) > 15;