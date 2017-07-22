docker-cron
===========

Cron in a container. Run any random  crap you need.

The following paths should be added:

* `/srv/cron/startup` - a script to execute when the container starts
* `/srv/cron/crontab` - /etc/cron.d-style crontab
