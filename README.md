As a Makers Student
So that I may quickly visit sites I frequently use
I want to access my list of saved pages

As a Makers Student
So that I may save new pages I’m interested in
I want to add new links to my bookmarks

As a Makers Student
So that I may sort my pages by interest or date
I would like to tag each page or link

As a Makers Student
So that I can quickly access pages by topic
I would like to filter my tagged links


Blog post on CRUD and SQL

  CRUD = Create/Read/Update/Delete are four basic functions of persistent storage.

  SQL = Structured Query Language and is a standard language for accessing databases.


    • CREATE procedure performs the INSERT statement which will create a new record
      sql example: CREATE TABLE "table name"
      sql example: INSERT INTO students(name) VALUES("teako")

    • READ procedure that reads the table based on primary key specified in the input parameter
      sql example: SELECT * FROM

    • UPDATE procedure performs an update statement on the table based on teh primary key for a record specified in the WHERE clause of the statement.
      sql example: UPDATE "students" SET NAME = 'Garry' WHERE ID = 1;


    • DELETE procedure deletes a row specified in the where clause
      sql example: DELETE FROM students WHERE name = 'teako'
