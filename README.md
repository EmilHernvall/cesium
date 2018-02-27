Cesium
======

Version control system for schemas, designed to work well with standard source
control. The database schema is stored as a series of patches in your standard
source repository, and Cesium helps you keep manage the changes and facilitates
a multi-branch workflow.

This is different from most attempts at versioning SQL schemas in that Cesium
actually understands your SQL. It has a complete MySQL dialect SQL parser built
in, based on grammar extracted from the MySQL source code. It can construct an
internal representation of your schema, to which DDL statements can be applied.
For that reason, Cesium doesn't even need a database connection to figure out
what has changed. This makes Cesium an ideal complement to a multi-branch
development workflow: the internal representation allows Cesium to determine
whether patches contains conflicts, and in many cases it can resolve those
conflicts automatically.

Cesium is work in progress, and this README is more of design document than an
accurate representation of what's currently here.

Commands
--------

Cesium uses a git-like command line interface.

 * cs db - Manage your database configurations
 * cs init - Initialize a cesium repository
 * cs deploy - Create a new database based on the schema described by the
   repository, or upgrade an existing database
 * cs retrieve - Retrieve the schema from a database and commit it to the
   repository
 * cs console - Open a console session to a database
 * cs patch - Add a new patch to the repository
 * cs status - Show current changes to database compared to the cesium
   repository
 * cs dump - Dump the schema as described by the cesium repository, or by the
   active database
 * cs tree - Prints the patch tree, highlighting which of the patches that have
   been applied to the active database
 * cs merge - Unify a diverging tree

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
