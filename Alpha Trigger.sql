set search_path to unirms;

create or replace function student_got_alpha()
returns trigger as
$$
begin
if new.grade = 'A'  then
insert into alphas (student_id, course_id, session_id, grade) values 
(new.student_id, new.course_id, new.session_id, new.grade);
end if;
return new;
end;
$$
language plpgsql;

CREATE TRIGGER student_got_alpha_trigger
AFTER INSERT OR UPDATE ON students_enrollment
FOR EACH ROW
EXECUTE FUNCTION student_got_alpha();
