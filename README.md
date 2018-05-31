Symfony in docker boilerplate
=============================

Get started with a ready to develop Symfony 4.1 project with :

* PHP 7.2
* composer
* MariaDB

Let's go
--------

Once docker and docker-composer are installed, prepare the containers :

    docker-compose up

Now just install the vendors and fix many things

    docker exec -it symfonydocker_front_1 ./project-install.sh

You'll see Symfony welcome page in your browser in http://localhost

Requirements
------------

Ports 80 and 3306 have to be available.
