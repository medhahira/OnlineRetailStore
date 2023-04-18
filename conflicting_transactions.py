"""Concurrent updates to the same product quantity in the Inventory table. 
For example, if two different employees update the quantity of the same product
in the Inventory table simultaneously, the data may become inconsistent. """

def update_product_quantity(conn, product_id, new_quantity):
#     if error/exception then rollback?
    with conn.cursor() as cur:
        # Start a transaction
        cur.execute("BEGIN;")
        
        # Query the current quantity of the product
        cur.execute("SELECT quantity FROM Inventory WHERE product_id = %s FOR UPDATE;", (product_id,))
        current_quantity = cur.fetchone()[0]
        
        # Update the quantity
        new_total = current_quantity + new_quantity
        cur.execute("UPDATE Inventory SET quantity = %s WHERE product_id = %s;", (new_total, product_id))
        
        # Commit the transaction
        cur.execute("COMMIT;")

"""Concurrent orders for the same product result in a stock shortage. For example, if 
two customers place an order for the same product at the same time, and the quantity in stock is 
not updated in real time, it may result in an over-booking of the product. 
"""

def update_product_quantity(conn, product_id, quantity):
    cursor = conn.cursor()

    try:
        cursor.execute("SELECT * FROM Inventory WHERE product_id = %s FOR UPDATE", (product_id,))
        # lock the row for the product_id to prevent concurrent update
        row = cursor.fetchone()
        if row:
            current_quantity = row[1]
            new_quantity = current_quantity - quantity
            if new_quantity < 0:
                raise Exception("Insufficient stock")

            cursor.execute("UPDATE Inventory SET quantity = %s WHERE product_id = %s", (new_quantity, product_id))
            conn.commit()
        else:
            raise Exception("Product not found")
    except Exception as e:
        conn.rollback()
        raise e

"""Concurrent updates to the same NGO's funds raised in the NGO table. For example, if two different 
employees update the amount of funds raised by the same NGO at the same time, 
the data may become inconsistent."""
def ngo(conn, ngo_id, donation_amount):
    cur = conn.cursor()

    try:
        # Begin the transaction
        cur.execute("BEGIN")

        # Retrieve the current funds raised for the NGO
        cur.execute("SELECT funds_raised FROM NGO WHERE ngo_id = %s FOR UPDATE", (ngo_id,))
        current_funds = cur.fetchone()[0]

        # Update the funds raised for the NGO
        new_funds = current_funds + donation_amount
        cur.execute("UPDATE NGO SET funds_raised = %s WHERE ngo_id = %s", (new_funds, ngo_id))

        # Commit the transaction
        conn.commit()

    except Exception as e:
        # Rollback the transaction if there is an error
        conn.rollback()
        print("Transaction failed:", e)

    finally:
        # Close the cursor and connection
        cur.close()
        conn.close()

