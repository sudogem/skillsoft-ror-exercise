# Ruby on Rails Docker

#### Requirements:
Ruby 2.3.3p222 (2016-11-21 revision 56859) [x64-mingw32]   
Rails 5.0.2   
MySQL Server version: 5.7.16-log - MySQL Community Server (GPL)   
Database client version: libmysql - mysqlnd 5.0.11-dev - 20120503   
Apache/2.4.25 (Win64) PHP/5.6.30   
PHP version: 5.6.30   

#### Setup:
Make sure that MySQL container runs first before the Rails container. Download the container at https://hub.docker.com/r/mysql   
$ docker pull mysql:5.7   
$ docker run --name mysql57 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=webdevel -d mysql:5.7   

If you want to run the mysql in different port, simply change the port in the Docker host:   
$ docker run --name mysql57 -p 3310:3306 -e MYSQL_ROOT_PASSWORD=webdevel -d mysql:5.7   

Next, Run the db setup and then the migration scripts.   
$ docker exec -it railsapp bundle exec rake db:setup && bundle exec rake db:migrate   

Next, start the rails app   
$ docker run -d -p 3000:3000 --link mysql57:mysql/5.7 --name railsapp skillsoftror \   
 rails server --port 3000 --binding 0.0.0.0   

To run the app in port 3001, simply do this:   
$ docker run -d -p 3001:3001 --link mysql57:mysql --name railsapp skillsoftror \   
 rails server --port 3001 --binding 0.0.0.0   
