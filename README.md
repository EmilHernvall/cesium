Cesium
======

Version control system for schemas, designed to work well with standard source
control. The database schema is stored as a series of patches in your standard
source repository, and Cesium helps you keep manage the changes and facilitates
a multi-branch workflow.

Commands
--------

Cesium uses a git-like command line interface.

 * cs db - Manage your database configurations
 * cs init - Initialize a cesium repository
 * cs import - Initialize the database from a cesium repository
 * cs console - Open a console session to the current database
 * cs commit - Commits current changes to database to the cesium repository as
   a new patch
 * cs status - Show current changes to database compared to the cesium
   repository
 * cs upgrade - Bring the current database up to date by applying new cesium
   patches
 * cs dump - Dump the schema as described by the cesium repository, or by the
   active database
 * cs tree - Prints the patch tree, highlighting which of the patches that have
   been applied to the active database
 * cs merge - Unify a diverging tree

Database state
--------------

Cesium uses a table called `version` in the database to keep track of which
patches that have been applied. The structure is as follows:

    CREATE TABLE version (
        version_hash CHAR (32) NOT NULL,
        version_description TEXT NOT NULL,
        version_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (version_hash)
    ) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;

This allows cesium to be intelligent about what changes that have been made to
the database. A in-memory representation can be constructed by applying the
patches listed, which can then be compared to the actual database to find out
what has changed compared to the repository.

Structure
---------

Cesium uses a git-like chain of patches with DDL to represent the database schema.
Each diff is stored in a .sql-file with some additional meta data represented
as comments at the beginning of the file:

The root might look like this:

    initial_import.sql

    #% Hash: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    #% Author: Emil Hernvall <emil@znaptag.com>
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
    #% Author: Emil Hernvall <emil@znaptag.com>
    #% Description: Added a column to keep track of active vs. disabled users

    ALTER TABLE user ADD COLUMN user_active ENUM ('0', '1') DEFAULT '1';

Now a second developer commits a new diff on another git branch:

    create_guestbook_table.sql

    #% Parent: initial_import.sql
    #% Hash: ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    #% Author: Emil Hernvall <emil@znaptag.com>
    #% Description: Added the guestbook table

    CREATE TABLE guestbook (
        guestbook_id INT UNSIGNED AUTO_INCREMENT,
        user_id INT UNSIGNED NOT NULL,
        guestbook_text VARCHAR (1024) NOT NULL,
        guestbook_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (guestbook_id),
        INDEX idx_lookup (user_id, guestbook_timestamp)
    ) ENGINE=InnoDB;

The schema tree has now diverged along with the source control repository. When
the branches are merged, we have a structure like this:

    | add_user_active_column.sql
    |
    | | create_guestbook_table.sql
    |/
    |
    | initial_import.sql

However, due to Cesiums understanding of schema DDL, it can verify that there's
no conflict and merge the tree automatically. We now have a clean history:

    | create_guestbook_table.sql
    | add_user_active_column.sql
    | initial_import.sql

This is accomplished simply by changing the parent of
`create_guestbook_table.sql` to `add_user_active_column.sql` rather than
`initial_import.sql`.
