## Bookmark Manager


User stories :

```
As a user.
So I can go to websites I regularly visit.
I would like to see a list of links on my homepage.
```

```
As a user.
So I can save a website.
I would like to add the address and title to a bookmark.
```

```
As a user.
So I can organise all the links into different categories.
I would like to add a tag to each bookmark.
```

```
As a user.
So I can find links my links by topic.
I would like to filter links by tags.

```

CRUD

Is the query language syntax for Create, Read, Update and Destroy. These are the four primary instructions that we give to our database.

Create - Add a new row to our database
Read - Retrieve row from the database
Update - Change the contents of a row in the database
Delete - Remove a row and its contents from the database

SQL - Stands for Structured Query Language. This is how we communicate with our relational database

### SQL - create

```
INSERT INTO students (name) VALUES ('John Smith');
```

### SQL - read

```
SELECT * FROM students;
```

### SQL - update

```
UPDATE students SET name = 'new name' WHERE id = 1;
```


### SQL - Destroy

```
DELETE FROM students WHERE name = 'old name';
```
