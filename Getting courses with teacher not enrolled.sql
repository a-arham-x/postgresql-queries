set search_path to unirms;

-- select * from students_enrollment;

-- delete from teachers_enrollment;

-- alter table teachers_enrollment add column program_id INTEGER REFERENCES programs(program_id)

-- select * from courses
-- select * from compulsory_courses;

-- The query to get the compulsory courses of a students which have no teacher assigned yet
select c.course_name, c.course_id from courses c where c.course_id in (
	select cc.course_id from compulsory_courses cc where cc.program_id = (
		select program_id from students where student_id = 1
	) and cc.course_id not in (
		select te.course_id from teachers_enrollment te where te.program_id = (
			select program_id from students where student_id = 1
		)
	)
)

-- select c.course_id, c.course_name from teachers_enrollment te
-- left join courses c on c.course_id = te.course_id;

-- select * from compulsory_courses where program_id = 1;

-- select * from teachers_enrollment;
