-- What are all projects that use JavaScript?
-- What are all technologies used by the Personal Website?
-- Perform a left outer join from the tech table to the project_uses_tech table - which techs has no associated project?
-- Based on the previous query, get the count of the number of techs used by each project.
-- Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech?
-- Based on the previous query, get the count of the number of projects that use each tech.
-- List all projects along with each technology used by it. You will need to do a three-way join.
-- List all the distinct techs that are used by at least one project.
-- List all the distinct techs that are not used by any projects.
-- List all the distinct projects that use at least one tech.
-- List all the distinct projects that use no tech.
-- Order the projects by how many tech it uses.
-- Order the tech by how many projects use it.
-- What is the average number of techs used by a project?


-- SELECT *
-- FROM project
-- INNER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- INNER JOIN tech
--     ON project_uses_tech.tech_id = tech.id
-- WHERE tech.name = 'Javascript';

-- SELECT *
-- FROM project
-- INNER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- INNER JOIN tech
--     ON project_uses_tech.tech_id = tech.id
-- WHERE project.name = 'Personal Website'

-- SELECT *
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
--     ON project_uses_tech.tech_id = tech.id

-- SELECT project_id, count(tech.id)
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
--     ON project_uses_tech.tech_id = tech.id
-- GROUP BY project_id
-- ORDER BY project_id


-- SELECT *
-- FROM project
-- LEFT OUTER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id

-- SELECT tech_id, count(project.id)
-- FROM project
-- LEFT OUTER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- GROUP BY tech_id
-- ORDER BY tech_id

-- SELECT *
-- FROM project
-- FULL OUTER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- FULL OUTER JOIN tech 
--     ON project_uses_tech.tech_id = tech.id

-- SELECT tech.name, count(project.id)
-- FROM project
-- INNER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- INNER JOIN tech 
--     ON project_uses_tech.tech_id = tech.id
-- GROUP BY tech.name
-- HAVING COUNT(project.id) >= 1

-- SELECT tech.name, count(project.id)
-- FROM project
-- FULL OUTER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- FULL OUTER JOIN tech 
--     ON project_uses_tech.tech_id = tech.id
-- GROUP BY tech.name
-- HAVING COUNT(project.id) = 0

-- SELECT project.name, count(tech_id)
-- FROM project
-- INNER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- INNER JOIN tech
--     ON project_uses_tech.tech_id = tech.id
-- GROUP BY project.name
-- HAVING count(tech_id) >= 1

-- SELECT project.name, count(tech_id)
-- FROM project
-- FULL OUTER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- FULL OUTER JOIN tech
--     ON project_uses_tech.tech_id = tech.id
-- GROUP BY project.name
-- HAVING count(tech_id) = 0

-- SELECT project.name, count(tech_id)
-- FROM project
-- FULL OUTER JOIN project_uses_tech
--     ON project_uses_tech.project_id = project.id
-- GROUP BY project.name
-- ORDER BY count

-- SELECT tech.name, count(project_id)
-- FROM tech
-- FULL OUTER JOIN project_uses_tech
--     ON project_uses_tech.tech_id = tech.id
-- GROUP BY tech.name
-- ORDER BY count(project_id)

SELECT avg(tech_count)
FROM (
    SELECT project.name, count(tech_id) AS tech_count
    FROM project
    FULL OUTER JOIN project_uses_tech
        ON project_uses_tech.project_id = project.id
    GROUP BY project.name
) AS average

