import mysql.connector

cnx = mysql.connector.connect(user='root', password='***', 
                              host='localhost', database='online retail store')

cursor = cnx.cursor()

query = """SELECT p.productID, p.name, count(*) as NumOfOrderedTimes FROM `online retail store`.order o
right join `online retail store`.product p
on p.productID = o.productID
group by p.productID,p.name
order by count(*) desc
LIMIT 10;"""

cursor.execute(query)

for row in cursor.fetchall():
    print(row)

cursor.close()
cnx.close()