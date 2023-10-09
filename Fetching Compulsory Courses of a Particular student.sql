set search_path to unirms;

-- The task isto get the compulsory courses of the student with student id as 1

-- Through Sub Queries
-- select c.course_name from courses c where course_id in (
-- 	select cc.course_id from compulsory_courses cc where semester = 5 and program_id in (
-- 		select s.program_id from students s where student_id = 1
-- 	)
-- )

-- Through Natural Join
-- select c.course_name, cc.semester from courses c 
-- NATURAL JOIN compulsory_courses cc 
-- NATURAL JOIN students s where s.student_id = 1
-- ORDER BY cc.semester;

-- Through Equi Join
-- select c.course_name, cc.semester from courses c 
-- JOIN compulsory_courses cc ON cc.course_id = c.course_id
-- JOIN students s ON s.program_id = cc.program_id AND s.student_id = 1
-- ORDER BY cc.semester;
