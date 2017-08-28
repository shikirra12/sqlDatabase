~ ❯❯❯ createdb todoList
~ ❯❯❯ psql
todoList=# CREATE TABLE todos;
todoList=# INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('clean room', 'vaccum floor', 1, '2008-11-11 13:23', '2008-11-11 15:23'), ('wash dishes', 'buy dish soap', 3, '2008-11-11 13:43','2008-11-11 17:23'), ('clean car', 'vaccum', 5, '2008-11-11 13:25', '2008-11-11 18:25'), ('fix tv', 'go to shop', 2, '2008-11-11 13:53', '2008-11-11 18:25'), ('take out trash', 'empty trash', 4,'2008-11-11 13:25','2008-11-11 17:25');
INSERT 0 5
todoList=# \dt
todoList=# INSERT INTO todos ( title, priority, created_at) VALUES ( 'watch tv', 3, '2008-11-11 13:25');
todoList=# SELECT title FROM todos WHERE completed_at IS NULL;
todoList=# SELECT title FROM todos WHERE priority > 1;
todoList=# UPDATE todos SET completed_at = '2008-11-11 17:25:00' WHERE id = 6;
todoList=# DELETE FROM todos WHERE completed_at IS NOT NULL;
