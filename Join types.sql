SET search_path to unirms;

-- NATURAL JOIN
-- select c.course_name, c.course_id, d.domain_name from courses c NATURAL JOIN domains d;

-- CROSS JOIN
-- select c.course_name, c.course_id, d.domain_name from courses c CROSS JOIN domains d;
-- select * from courses;
-- select * from domains;


-- update domains set domain_name='Software Engineering' where domain_id = 2;

-- SELF JOIN
-- select d.domain_name from domains d where domain_id in (
-- 	select c1.domain_id from courses c1 JOIN courses c2 
-- 	on c1.domain_id = c2.domain_id and c1.course_id <> c2.course_id
-- );

-- EQUI JOIN
-- select courses.course_id, courses.course_name, domains.domain_name from courses join domains on courses.domain_id = domains.domain_id

-- Conditional Join
-- select courses.course_id, courses.course_name, domains.domain_name from courses
-- join domains ON courses.domain_id = domains.domain_id 
-- AND CASE WHEN domains.domain_id = (select domain_id from domains where domain_name='Electrical Engineering')
-- THEN 1 ELSE 0 END = 1;

-- FULL OUTER JOIN
-- SELECT courses.course_id, courses.course_name, domains.domain_id
-- FROM domains
-- FULL JOIN courses ON courses.course_name = domains.domain_name;

-- LEFT OUTER JOIN
-- SELECT courses.course_id, courses.course_name, domains.domain_id
-- FROM domains
-- LEFT JOIN courses ON courses.course_name = domains.domain_name;

-- RIGHT OUTER JOIN
-- SELECT courses.course_id, courses.course_name, domains.domain_id
-- FROM domains
-- RIGHT JOIN courses ON courses.course_name = domains.domain_name;









