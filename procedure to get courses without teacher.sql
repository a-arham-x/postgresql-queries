set search_path to unirms;

create or replace procedure get_courses_without_teachers(st_id integer) as
$$ 
declare 
i record;
begin
for i in select c.course_name, c.course_id from courses c where c.course_id in (
	select cc.course_id from compulsory_courses cc where cc.program_id = (
		select program_id from students where student_id = st_id
	) and cc.course_id not in (
		select te.course_id from teachers_enrollment te where te.program_id = (
			select program_id from students where student_id = st_id
		)
	)
) loop
raise notice 'Course ID: %, Course Name: %', i.course_id, i.course_name;
end loop;
end;
$$
language plpgsql;
