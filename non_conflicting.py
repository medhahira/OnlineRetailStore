"""Updating the product inventory and the order status: 
Transaction 1: Reduce the quantity of a product in the inventory by the number of items ordered. 
Transaction 2: Update the status of the corresponding order to "shipped".
"""

def update_prod(conn, num_items_ordered, product_id, order_id):
    cursor = conn.cursor()

    try:
        # Transaction 1: Reduce product inventory
        cursor.execute("UPDATE Inventory SET quantity = quantity - %s WHERE product_id = %s", (num_items_ordered, product_id))

        # Transaction 2: Update order status
        cursor.execute("UPDATE Orders SET status = %s WHERE order_id = %s", ("shipped", order_id))

        # Commit the transaction
        conn.commit()
        print("Transactions completed successfully.")

    except Exception as e:
        # Rollback the transaction in case of any error
        conn.rollback()
        print("Error occurred: ", e)

    finally:
        # Close the cursor and connection
        cursor.close()
        conn.close()

"""Redeeming a coupon and billing the customer: 
Transaction 1: Update the status of a coupon to "used" and link it to the order for which it was used. 
Transaction 2: Create a new billing entry for the order, deduct the amount of the coupon from the total bill amount, and add the remaining amount to the customer's account. 
"""
def redeem_coupon(coupon_id, order_id, conn):
    cur = conn.cursor()
    try:
        # start a transaction
        conn.autocommit = False

        # update the status of the coupon to "used" and link it to the order
        cur.execute("UPDATE coupons SET status = 'used', order_id = %s WHERE id = %s", (order_id, coupon_id))

        # commit the transaction
        conn.commit()
    except:
        # rollback the transaction if there is an error
        conn.rollback()
        print("Error redeeming coupon.")
    finally:
        cur.close()

def bill_customer(order_id, total_amount, coupon_amount, conn):
    cur = conn.cursor()
    try:
        # start a transaction
        conn.autocommit = False

        # create a new billing entry for the order
        cur.execute("INSERT INTO billing (order_id, total_amount, coupon_amount, remaining_amount) VALUES (%s, %s, %s, %s)", (order_id, total_amount, coupon_amount, total_amount - coupon_amount))

        # add the remaining amount to the customer's account
        cur.execute("UPDATE customers SET account_balance = account_balance + %s WHERE id = (SELECT customer_id FROM orders WHERE id = %s)", (total_amount - coupon_amount, order_id))

        # commit the transaction
        conn.commit()
    except:
        # rollback the transaction if there is an error
        conn.rollback()
        print("Error billing customer.")
    finally:
        cur.close()

"""Adding a new product and updating the product list: 
Transaction 1: Insert a new row into the product table with the new product's details. 
Transaction 2: Update the list of available products by querying the product 
table and adding the new product to the list. """

def new_prod(conn):
    cursor = conn.cursor()

    # Beginning the transaction
    try:
        # Transaction 1: Insert a new row into the product table
        cursor.execute("INSERT INTO product (product_name, product_description, price) VALUES (?, ?, ?)", ("New Product", "This is a new product", 99.99))

        # Transaction 2: Update the list of available products
        cursor.execute("SELECT product_name FROM product")
        product_list = [row[0] for row in cursor.fetchall()]
        product_list.append("New Product")
        cursor.execute("UPDATE product_list SET available_products = ?", (",".join(product_list),))

        # Committing the transaction
        conn.commit()
        print("Transaction completed successfully!")
    except Exception as e:
        # Rolling back the transaction in case of any error
        conn.rollback()
        print("Transaction failed:", e)
    finally:
        # Closing the connection
        conn.close()