
--    Leetcode invalid tweet(1683)
--    https://leetcode.com/problems/invalid-tweets/description/

--  Write your MySQL query statement below

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15 ;