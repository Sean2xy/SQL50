# Write your MySQL query statement below
# return id, count limit 1
SELECT id, COUNT(*) as num
FROM (
         SELECT requester_id as id FROM RequestAccepted
         UNION ALL
         SELECT accepter_id as id FROM RequestAccepted
     ) t
GROUP BY id
ORDER BY num DESC
    LIMIT 1;
