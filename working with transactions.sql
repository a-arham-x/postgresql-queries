-- BEGIN; -- Start a new transaction

-- UPDATE students
-- SET program_id = 2
-- WHERE student_id = 1;

-- -- More database operations, if needed

-- ROLLBACK;

-- ROLLBACK

-- select * from unirms.students
set search_path to unirms;



-- begin ;
-- update students
-- set program_id = 1
-- where student_id = 1;


-- savepoint my_save_point;

-- begin ;
-- update students
-- set program_id = 2
-- where student_id = 1;


-- rollback to savepoint my_save_point;
-- end;

select * from students;
