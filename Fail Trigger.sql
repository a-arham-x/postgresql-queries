create or replace function student_got_fail()
returns trigger as
$$
begin
if new.grade = 'F' then
insert into fails (student_id, course_id, session_id, grade) values (new.student_id, new.course_id, new.session_id, new.grade);
return new;
end if;
end;
$$
language plpgsql;

create trigger student_got_fail_trigger
after insert or update on students_enrollment
for each row
execute function student_got_fail()