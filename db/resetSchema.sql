drop table if exists prefs;

create table prefs (
    id serial primary key,
    user_id int unique not null,
    cohort_ids int[],
    ignored_alerts Varchar(150)
);

insert into prefs (ignored_alerts)
values('234', '456')