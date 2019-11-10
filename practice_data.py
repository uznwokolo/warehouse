import sqlite3
db = sqlite3.connect('whstock.db')
db.execute("CREATE TABLE whstock (id INTEGER PRIMARY KEY, name CHAR(30) NOT NULL, location CHAR(4) NOT NULL, assignedto CHAR(20) NOT NULL) ")
db.execute("INSERT INTO whstock (id,name,location,assignedto) VALUES (1234, 'Hammer Drill', 'A6','Warehouse')")
db.execute("INSERT INTO whstock (id,name,location,assignedto) VALUES (1016, 'Miter Saw', 'B7','Warehouse')")
db.execute("INSERT INTO whstock (id,name,location,assignedto) VALUES (3200, '18g Nail Gun', 'C12','Warehouse')")
db.execute("INSERT INTO whstock (id,name,location,assignedto) VALUES (2548, 'Compressor', 'D4','Warehouse')")
db.commit()
db.execute("CREATE TABLE htxjobsites (id INTEGER PRIMARY KEY, name CHAR(30) NOT NULL) ")
db.execute("INSERT INTO htxjobsites (name) VALUES ('Gonzalez')")
db.execute("INSERT INTO htxjobsites (name) VALUES ('Ramos')")
db.execute("INSERT INTO htxjobsites (name) VALUES ('Washington')")
db.execute("INSERT INTO htxjobsites (name) VALUES ('Almeda')")
db.commit()
