SELECT
d.id, d.email, d.firstname, d.lastname
FROM
developers d,
(
SELECT SUM(skillcodes.code) AS code
FROM skillcodes
WHERE skillcodes.name IN ('C#', 'Python')
) c
WHERE
(d.skill_code & c.code) > 0
ORDER BY d.id