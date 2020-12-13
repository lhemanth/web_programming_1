import sqlite3
conn = sqlite3.connect('work.db') # Warning: This file is created in the current directory
conn.execute("INSERT INTO todo (name,status) VALUES ('Hemanth',1)")
conn.execute("INSERT INTO todo (name,status) VALUES ('John',0)")
conn.execute("INSERT INTO todo (name,status) VALUES ('Shawn',1)")
conn.execute("INSERT INTO todo (name,status) VALUES ('Chris',0)")
conn.commit()