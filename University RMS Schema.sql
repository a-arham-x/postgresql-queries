SET search_path TO unirms;

CREATE TABLE programs (
	program_id SERIAL PRIMARY KEY,
	program_name VARCHAR(255) NOT NULL,
	inclusion_year INTEGER NOT NULL,
	exclusion_year INTEGER	
);

CREATE TABLE domains(
	domain_id SERIAL PRIMARY KEY,
	domain_name VARCHAR(255) NOT NULL,
	inclusion_year INTEGER NOT NULL,
	exclusion_year INTEGER
);

CREATE TABLE sessions(
	session_id SERIAL PRIMARY KEY,
	year INTEGER NOT NULL,
	season VARCHAR(255) NOT NULL
);

CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	cnic_id INTEGER NOT NULL,
	name VARCHAR(255) NOT NULL,
	birth_date DATE,
	program_id INTEGER REFERENCES programs(program_id),
	entering_year INTEGER NOT NULL,
	current_semester INTEGER NOT NULL,
	passing_year INTEGER
);

CREATE TABLE teachers (
	teacher_id SERIAL PRIMARY KEY,
	cnic_id INTEGER NOT NULL,
	name VARCHAR(255) NOT NULL,
	birth_date DATE,
	joining_year INTEGER NOT NULL,
	domain_id INTEGER REFERENCES domains(domain_id)
);

CREATE TABLE courses (
	course_id SERIAL PRIMARY KEY,
	course_name VARCHAR(255) NOT NULL,
	domain_id INTEGER REFERENCES domains(domain_id)
);

CREATE TABLE students_enrollment (
	student_id INTEGER REFERENCES students(student_id),
	course_id INTEGER REFERENCES courses(course_id),
	session_id INTEGER REFERENCES sessions(session_id),
	semester INTEGER,
	teacher_id INTEGER REFERENCES teachers(teacher_id),
	grade VARCHAR(3)
);

CREATE TABLE teachers_enrollment (
	teacher_id INTEGER REFERENCES teachers(teacher_id),
	course_id INTEGER REFERENCES courses(course_id),
	session_id INTEGER REFERENCES sessions(session_id),
	program_id INTEGER REFERENCES programs(program_id)
);

CREATE TABLE compulsory_courses (
	program_id INTEGER REFERENCES programs(program_id),
	semester INTEGER NOT NULL,
	course_id INTEGER REFERENCES courses(course_id)
);

CREATE TABLE quizes(
	student_id INTEGER REFERENCES students(student_id),
	session_id INTEGER REFERENCES sessions(session_id),
	course_id INTEGER REFERENCES courses(course_id),
	semester INTEGER,
	quiz_number INTEGER NOT NULL,
	marks FLOAT8 NOT NULL
);

CREATE TABLE assignments(
	student_id INTEGER REFERENCES students(student_id),
	session_id INTEGER REFERENCES sessions(session_id),
	course_id INTEGER REFERENCES courses(course_id),
	semester INTEGER,
	assignment_number INTEGER NOT NULL,
	marks FLOAT8 NOT NULL
);

CREATE TABLE mids(
	student_id INTEGER REFERENCES students(student_id),
	session_id INTEGER REFERENCES sessions(session_id),
	course_id INTEGER REFERENCES courses(course_id),
	semester INTEGER,
	marks FLOAT8 NOT NULL
);

CREATE TABLE finals(
	student_id INTEGER REFERENCES students(student_id),
	session_id INTEGER REFERENCES sessions(session_id),
	course_id INTEGER REFERENCES courses(course_id),
	semester INTEGER,
	marks FLOAT8 NOT NULL
);

CREATE TABLE alphas(
	student_id INTEGER REFERENCES students(student_id),
	course_id INTEGER REFERENCES courses(course_id),
	session_id INTEGER REFERENCES sessions(session_id),
	grade varchar(3)
);

CREATE TABLE fails(
	student_id INTEGER REFERENCES students(student_id),
	course_id INTEGER REFERENCES courses(course_id),
	session_id INTEGER REFERENCES sessions(session_id),
	grade varchar(3)
);