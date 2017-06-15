# Ruby on Rails exercise

#### Requirements:   
Ruby 2.3.3p222 (2016-11-21 revision 56859) [x64-mingw32]   
Rails 5.0.2   
MySQL Server version: 5.7.16-log - MySQL Community Server (GPL)   
Database client version: libmysql - mysqlnd 5.0.11-dev - 20120503   
Apache/2.4.25 (Win64) PHP/5.6.30
PHP version: 5.6.30

#### Setup:   
Make sure that MySQL container runs first before the Rails container.
https://hub.docker.com/r/mysql/mysql-server/

$ docker run --name mysql57 -e MYSQL_ROOT_PASSWORD=webdevel -d mysql/mysql-server:5.7
$ docker start mysql57

$ docker run -d -p 3000:3000 --link mysql55:mysql --name railsapp skillsoftror_rev1 \
 rails server --port 3000 --binding 0.0.0.0
