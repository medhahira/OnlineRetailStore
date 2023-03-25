import mysql.connector

cnx = mysql.connector.connect(user='root', password='*', 
                              host='localhost', database='online retail store')

cursor = cnx.cursor()


# Create the trigger
trigger_query = """
CREATE TRIGGER remove_from_cart AFTER INSERT ON `Order`
FOR EACH ROW
BEGIN
   DELETE FROM Cart WHERE productID = NEW.productID;
END;
"""
cursor.execute(trigger_query)

# Commit the transaction
cnx.commit()

# Close the database connection
cnx.close()