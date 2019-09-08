drop table commits;
create table commits (
	row_id integer primary key autoincrement,
	timestamp integer,
	commit_id varchar,
	commit_type varchar);

drop table cherrypicks;
create table cherrypicks (
	row_id integer primary key autoincrement,
	timestamp integer,
	commit_id varchar,
	branch_name varchar,
	branch_delay int,
	status varchar,
	git_command_output varchar,
	commit_log varchar,
	commit_diff varchar,
	conficts varchar);

drop table events;
create table events (
	row_id integer primary key autoincrement,
	timestamp integer,
	commit_id varchar,
	commit_type varchar,
	event_name varchar,
	commit_log varchar,
	commit_diff varchar);


