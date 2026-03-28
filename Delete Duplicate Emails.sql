# Write your MySQL query statement below
DELETE p
FROM Person p
JOIN (
    SELECT MIN(id) AS min_id, email
    FROM Person
    GROUP BY email
) t
ON p.email = t.email
WHERE p.id <> t.min_id;