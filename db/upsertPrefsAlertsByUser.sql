insert into prefs (user_id, ignored_alerts)
values ($1, $2)
on conflict (user_id) do update set ignored_alerts = excluded.ignored_alerts returning ignored_alerts;