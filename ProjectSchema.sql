set search_path to public;

-- drop table notifications;
-- drop table milestones;
-- drop table comments;
-- drop table followings;
-- drop table task_members;
-- drop table project_members;
-- drop table team_members;
-- drop table tasks;
-- drop table schedules;
-- drop table projects;
-- drop table teams;
-- drop table users;

create table users(
	user_id serial primary key,
	email varchar(255) unique not null,
	password varchar(255) not null,
	username varchar(255) unique not null,
	name varchar(255) not null,
	time_created timestamp not null,
	is_deleted boolean not null,
	deletion_time timestamp,
	profile_picture BYTEA, 
    cover_photo BYTEA,
	bio varchar(150),
	about varchar(1000)
);

create table teams(
	team_id serial primary key,
	time_created timestamp not null,
	leader_id integer not null references users(user_id),
	is_ended boolean not null,
	team_description varchar(255)
);

create table projects(
	project_id serial primary key,
	time_created timestamp not null,
	leader_id integer not null references users(user_id),
	is_ended boolean not null,
	start_time timestamp not null,
	end_time timestamp,
	team_id integer references teams(team_id),
	project_description varchar(255)
);

create table schedules(
	schedule_id serial primary key,
	user_id integer not null references users(user_id),
	schedule_duration varchar(255) not null,
	schedule_description varchar(255)
);

create table tasks(
	task_id serial primary key,
	time_created timestamp not null,
	creator_id integer not null references users(user_id),
	is_ended boolean not null,
	start_time timestamp not null,
	end_time timestamp,
	team_id integer references teams(team_id),
	project_id integer references projects(project_id),
	schedule_id integer references schedules(schedule_id),
	task_description varchar(255)
);

create table team_members(
	team_id integer references teams(team_id),
	member_id integer references users(user_id),
	rol varchar(255),
	rol_description varchar(255),
	has_left boolean not null,
	joining_time timestamp not null,
	leaving_time timestamp 
);

create table project_members(
	project_id integer references projects(project_id),
	member_id integer references users(user_id),
	rol varchar(255),
	rol_description varchar(255),
	has_left boolean not null,
	joining_time timestamp not null,
	leaving_time timestamp 
);

create table task_members(
	task_id integer references tasks(task_id),
	member_id integer references users(user_id),
	work_description varchar(255),
	has_left boolean not null,
	joining_time timestamp not null,
	leaving_time timestamp
);

create table followings(
	follower_id integer references users(user_id),
	followed_id integer references users(user_id),
	followed_time timestamp not null
);

create table comments(
	comment_id serial primary key,
	comment_made varchar(1000) not null,
	made_by integer references users(user_id),
	task_id integer not null references tasks(task_id),
	comment_time timestamp not null
);

create table milestones(
	milestone_id serial primary key,
	milestone_name varchar(255) not null,
	milestone_description varchar(255) not null,
	milestone_deadline integer not null,
	milestone_made_time timestamp not null,
	set_by integer references users(user_id),
	team_id integer references teams(team_id),
	project_id integer references projects(project_id),
	task_id integer references tasks(task_id),
	is_acheived boolean not null
);

create table notifications(
	notification_id serial primary key,
	notification_message varchar(255) not null,
	notification_time timestamp not null,
	notification_to integer references users(user_id)
)




