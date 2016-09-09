-- Table information like sortkeys, unsorted percentage
-- see http://docs.aws.amazon.com/redshift/latest/dg/r_SVV_TABLE_INFO.html
select * from svv_table_info;

-- Table sizes in GB
select t.name, count(tbl) / 1000.0 as GB
from (
	select distinct datname, id, name
	from stv_tbl_perm
	join pg_database on pg_database.oid = db_id
) as t
join stv_blocklist on tbl = t.id
group by t.name order by gb desc;

-- Table column metadata
select * from pg_table_def
where schemaname = 'public'
and table = ...;

-- Vacuum progress
-- see http://docs.aws.amazon.com/redshift/latest/dg/r_SVV_VACUUM_PROGRESS.html
select * from svv_vacuum_progress;

-- The size in MB of each column of each table (actually the number of blocks, but the blocks are 1 MB)
-- see http://stackoverflow.com/questions/33388587/how-can-i-find-out-the-size-of-each-column-in-a-redshift-table
select
	trim(name) as table_name,
	trim(pg_attribute.attname) as column_name,
	count(1) as size
from
	svv_diskusage join pg_attribute on 
		svv_diskusage.col = pg_attribute.attnum-1 and
		svv_diskusage.tbl = pg_attribute.attrelid
group by 1, 2
order by 1, 2;

-- List users and groups
select * from pg_user;
select * from pg_group;

-- List all databases
select * from pg_database;

-- List the 100 last load errors
-- see http://docs.aws.amazon.com/redshift/latest/dg/r_STL_LOAD_ERRORS.html
select *
from stl_load_errors
order by starttime desc
limit 100;

-- Convert a millisecond resolution number to a timestamp
select timestamp 'epoch' + (millisecond_timestamp/1000 * interval '1 second') from
...;

-- Get the full SQL from a query ID
select listagg(text) within group (order by sequence) as sql
from stl_querytext
where query = ...;

-- Get the full SQL, plus more query details from a query ID
-- Filter on xid to see all (including Redshift internal) operations in the transaction
with query_sql as (
	select
		query,
		listagg(text) within group (order by sequence) as sql
	from stl_querytext
	group by 1
)
select
	q.query,
	userid,
	xid,
	pid,
	starttime,
	endtime,
	datediff(milliseconds, starttime, endtime)/1000.0 as duration,
	trim(database) as database,
	(case aborted when 1 then true else false end) as aborted,
	sql
from 
	stl_query q join query_sql qs on (q.query = qs.query)
where
	q.query = ...
order by starttime;

-- Show the most recently executed DDL statemenets
select
	starttime,
	xid,
	listagg(text) withihn group (order by sequence) as sql
from stl_ddltext
group by 1, 2
order by 1 desc;

-- Query duration stats per database, user and query group; including the max, median, 99 percentile, etc.
-- Change which duration to use (queue, exec or total) by commenting out the right lines below
with
durations1 as (
	select
		trim("database") as db,
		trim(u.usename) as "user",
		trim(label) as query_group,
		date_trunc('day', starttime) as day,
		-- total_queue_time/1_000_000.0 as duration,
		-- total_exec_time/1_000_000.0 as duration,
		(total_queue_time + total_exec_time)/1000000.0 as duration
	from stl_query q, stl_wlm_query w, pg_user u
	where q.query = w.query
		and q.userid = u.usesysid
		and aborted = 0
),
durations2 as (
	select
		db,
		"user",
		query_group,
		day,
		duration,
		percentile_cont(0.50) within group (order by duration) over (partition by db, "user", query_group, day) as median,
		percentile_cont(0.75) within group (order by duration) over (partition by db, "user", query_group, day) as p75,
		percentile_cont(0.90) within group (order by duration) over (partition by db, "user", query_group, day) as p90,
		percentile_cont(0.95) within group (order by duration) over (partition by db, "user", query_group, day) as p95,
		percentile_cont(0.99) within group (order by duration) over (partition by db, "user", query_group, day) as p99,
		percentile_cont(0.999) within group (order by duration) over (partition by db, "user", query_group, day) as p999
	from durations1
)
select
	db,
	"user",
	query_group,
	day,
	min(duration) as min,
	avg(duration) as avg,
	max(median) as emdian,
	max(p75) as p75,
	max(p90) as p90,
	max(p95) as p95,
	max(p99) as p99,
	max(p999) as p999,
	max(duration) as max
from durations2
group by 1, 2, 3, 4
order by 1, 2, 3, 4;

-- Currently executing and recently executed queries with status, duration, database, etc.
select
	r.id,
	trim(status) as status,
	trim(db_name) as db,
	trim(user_name) as "user",
	trim(label) as query_group,
	r.starttime as start_time,
	r.duration,
	r.query as sql
from stv_recents r left join stv_inflight i on r.pid = i.pid;

-- See the remote host and port of running queries
select
	recents.pid,
	trim(db_name) as db,
	trim(user_name) as "user",
	trim(label) as query_group,
	recents.starttime as start_time,
	recents.duration,
	recents.query as sql,
	trim(remotehost) as remote_host,
	trim(remoteport) as remote_port
from stv_recents recents
left join stl_connection_log connections on (recents.pid = connections.pid)
left join stv_inflight inflight on recents.pid = inflight.pid
where trim(status) = 'Running'
and event = 'initiating session';










