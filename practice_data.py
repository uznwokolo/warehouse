import sqlite3
db = sqlite3.connect('whstock.db')
db.execute("CREATE TABLE whstock (id INTEGER PRIMARY KEY, name CHAR(30) NOT NULL, location CHAR(4) NOT NULL)")
db.execute("INSERT INTO whstock (id,name,location) VALUES (1234, 'Hammer Drill', 'A6')")
db.execute("INSERT INTO whstock (id,name,location) VALUES (1016, 'Miter Saw', 'B7')")
db.execute("INSERT INTO whstock (id,name,location) VALUES (3200, '18g Nail Gun', 'C12')")
db.execute("INSERT INTO whstock (id,name,location) VALUES (2548, 'Compressor', 'D4')")
db.commit()