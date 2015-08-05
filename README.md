Cesium
======

Version control system for schemas

Commands
--------

cs init - Set up version table in an existing db
cs tree - Prints the diff tree
cs commit - Commits current changes to database
cs import - Import the schema to a fresh database
cs dump - Dump the schema
cs console - Open a console session
cs status - Show current changes to database
cs upgrade - Apply new diffs to database
cs merge - Unify a divergent tree

Structure
---------

Cesium uses a git-like chain of patches with DDL to represent the database schema.
Each diff is stored in a .sql-file with 

The root might look like this:

    initial_import.sql

    #% Hash: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    #% Description: Initial schema dump

    CREATE TABLE user (
        user_id INT UNSIGNED AUTO_INCREMENT,
        user_email VARCHAR (255) NOT NULL,
        user_password VARCHAR (64) NOT NULL,
        PRIMARY KEY (user_id)
    ) ENGINE=InnoDB;

With a child having the following format:

    add_user_active_column.sql

    #% Parent: initial_import.sql
    #% Hash: YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
    #% Description: Added a column to keep track of active vs. disabled users

    ALTER TABLE user ADD COLUMN user_active ENUM ('0', '1') DEFAULT '1';
