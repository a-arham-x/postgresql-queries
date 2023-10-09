-- select "courses".course_name, "compulsory_courses".semester from unirms."courses" 
-- JOIN unirms."compulsory_courses" on "courses".course_id = "compulsory_courses".course_id
-- WHERE "courses".course_id in (
-- 	select "compulsory_courses".course_id from unirms."compulsory_courses" where program_id = (
-- 		select "programs".program_id from unirms."programs" where "programs".program_name = 'Data Science'
-- 	)
-- )

select "courses".course_name, "compulsory_courses".semester from unirms."compulsory_courses"
JOIN unirms."courses" on "compulsory_courses".course_id = "courses".course_id
where "compulsory_courses".program_id = (
	select "programs".program_id from unirms."programs" where "programs".program_name = 'Electrical Engineering'
) order by semester;

-- select "programs".program_id from unirms."programs" where "programs".program_name = 'Software Engineering';
-- select * from unirms."programs";

-- delete from unirms."programs" where program_id > 4;