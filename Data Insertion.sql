set search_path to unirms;

-- INSERT INTO unirms."programs"(program_name, inclusion_year) VALUES('Software Engineering', 2010);
-- INSERT INTO unirms."programs"(program_name, inclusion_year) VALUES('Computer Science', 2010);
-- INSERT INTO unirms."programs"(program_name, inclusion_year) VALUES('Electrical Engineering', 2012);
-- INSERT INTO unirms."programs"(program_name, inclusion_year) VALUES('Data Science', 2023);

-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Computer Science', 2010);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Sofwtare Engineering', 2010);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Electrical Engineering', 2010);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Physics', 2010);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Chemistry', 2011);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Mathematics', 2010);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Humanities', 2010);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Electronics Engineering', 2012);
-- INSERT INTO unirms."domains"(domain_name, inclusion_year) VALUES('Data Science', 2023);

-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Calculus', 6);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Fundamentals of Programming', 1);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Object Oriented Programming', 1);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Software Engineering', 2);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Software Construction', 2);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Circuit Analysis', 3);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Computer Networks', 3);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Database Systems', 1);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Applied Physics', 4);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Linear Algebra', 6);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Applied Chemistry', 5);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Digital Logic Design', 8);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Data Science', 9);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('English', 7);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Islamic Studies', 7);
-- INSERT INTO unirms."courses"(course_name, domain_id) VALUES('Pakistan Studies', 7);

-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 1, 2);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 1, 1);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(2, 1, 2);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(3, 1, 6);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 5, 5);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(2, 2, 3);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 2, 3);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(3, 3, 3);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(4, 1, 2);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(4, 1, 14);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(4, 1, 16);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 2, 10);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(3, 2, 10);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(2, 3, 10);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(4, 2, 1);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 2, 15);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(2, 3, 8);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 3, 8);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(4, 1, 13);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(3, 3, 12);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(3, 2, 11);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 1, 9);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(2, 2, 9);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 3, 7);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 3, 4);
-- INSERT INTO unirms."compulsory_courses"(program_id, semester, course_id) VALUES(1, 1, 14);

-- select * from unirms."compulsory_courses"

-- select * from students;

-- select * from programs;

-- INSERT INTO students (cnic_id, name, birth_date, program_id, entering_year, current_semester)
-- VALUES (838738389, 'Abdul Arham', '2002-09-17', 1, 2021, 4)
-- INSERT INTO students (cnic_id, name, birth_date, program_id, entering_year, current_semester)
-- VALUES (8737219, 'Muhammad Bilal', '2002-01-04', 1, 2021, 4);
-- INSERT INTO students (cnic_id, name, birth_date, program_id, entering_year, current_semester)
-- VALUES (2172812, 'Ismaeel Zeb', '2002-03-06', 2, 2022, 2);
-- INSERT INTO students (cnic_id, name, birth_date, program_id, entering_year, current_semester)
-- VALUES (72617181, 'Muhammad Ashhub Ali', '2003-10-28', 1, 2021, 4);
-- INSERT INTO students (cnic_id, name, birth_date, program_id, entering_year, current_semester)
-- VALUES (818727181, 'Khuzaima Aslam', '2003-03-19', 3, 2021, 4);
-- INSERT INTO students (cnic_id, name, birth_date, program_id, entering_year, current_semester)
-- VALUES (27181818, 'Wasif Mehmood', '2003-12-03', 1, 2021, 4);
-- INSERT INTO students (cnic_id, name, birth_date, program_id, entering_year, current_semester)
-- VALUES (87162626, 'Adeel Ahmed Qureshi', '2002-11-29', 1, 2021, 4);

-- select * from teachers;

-- select * from domains;

-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (626611, 'Bilal Rizvi', '1913-09-13', 2014, 1);
-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (828172, 'Rai Sajjad Saif', '1978-10-21', 2016, 6);
-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (71616, 'Hina Munir Dutt', '1990-04-15', 2018, 6);
-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (1425511, 'ALi Munir', '1982-11-07', 2021, 7);
-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (8188182, 'Nasir Mehmood', '1960-09-21', 2002, 8);
-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (9888181, 'Fizzah Irfan', '1995-08-14', 2018, 7);
-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (817712, 'Sidra Sultana', '1974-06-06', 2009, 2);
-- INSERT INTO teachers (cnic_id, name, birth_date, joining_year, domain_id)
-- VALUES (5612281, 'Huma Ghafoor', '1980-12-24', 2015, 8);

-- INSERT INTO sessions (year, season) VALUES (2021, 'Fall');
-- INSERT INTO sessions (year, season) VALUES (2022, 'Spring');
-- INSERT INTO sessions (year, season) VALUES (2022, 'Summer');
-- INSERT INTO sessions (year, season) VALUES (2022, 'Fall');
-- INSERT INTO sessions (year, season) VALUES (2023, 'Spring');
-- INSERT INTO sessions (year, season) VALUES (2023, 'Summer');

-- select * from students_enrollment;

-- select c.course_id, course_name from courses c
-- join compulsory_courses cc on cc.course_id = c.course_id and program_id=1;

-- alter table students_enrollment drop column teacher_id;

-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 1, 1, 1, 'C+');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 2, 1, 1, 'B+');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 3, 2, 2, 'D+');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 4, 4, 3, 'C+');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 7, 4, 3, 'D');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 8, 4, 3, 'C+');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 9, 1, 1, 'B');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 10, 2, 2, 'C');
-- INSERT INTO students_enrollment (student_id, course_id, session_id, semester, grade) VALUES (1, 15, 2, 2, 'C');

-- select * from teachers;
-- select * from courses

-- INSERT INTO teachers_enrollment (teacher_id, course_id, session_id, program_id) VALUES (1, 8, 4, 1);
-- INSERT INTO teachers_enrollment (teacher_id, course_id, session_id, program_id) VALUES (2, 1, 1, 1);
-- INSERT INTO teachers_enrollment (teacher_id, course_id, session_id, program_id) VALUES (4, 15, 2, 1);
-- INSERT INTO teachers_enrollment (teacher_id, course_id, session_id, program_id) VALUES (6, 14, 1, 1);
-- INSERT INTO teachers_enrollment (teacher_id, course_id, session_id, program_id) VALUES (8, 7, 4, 1);

-- select * from students_enrollment;

