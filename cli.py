import mysql.connector
import time
from datetime import datetime
from tabulate import tabulate
from os import system

# YYYY-MM-DD hh:mm:ss
now = datetime.now()
dt= now.strftime("%Y-%m-%d %H:%M:%S")

cnx = mysql.connector.connect(user='root', password='Medhahira@16', 
                              host='localhost', database='online retail store')
cursor = cnx.cursor()


#TRANSACTION 
def bill_customer(order_id, bill_amount, val):
    try:
        # start a transaction
        cnx.autocommit = False

        # create a new billing entry for the order
        query_insert = """insert into Billing (payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (%s, %s, %s, %s, %s, %s)"""
        cursor.execute(query_insert,val)
        
        # remove the billing amount from customer balance
        cursor.execute("UPDATE customer SET balance = balance - %s WHERE username = (SELECT distinct username FROM `order` WHERE orderID = %s)", (bill_amount, order_id))

        # commit the transaction
        cnx.commit()
    except Exception as e:
        print(e)
        # rollback the transaction if there is an error
        cnx.rollback()
        print("Error billing customer.")
    # finally:
        # cursor.close()



#ADDING IN CART, LETTING USER INC QUANTITY- USE A TRIGGER, OR A CHECK FOR QUANTITY 
#DELIVERY PARTNER login and signup, details fetch
#DISTRIBUTOR login and signup 
print("""
   _____                        ______     __                          _______                                                   
 /      \                      /      \   |  \                        |       \                                                  
|  $$$$$$\ _______    ______  |  $$$$$$\ _| $$_     ______    ______  | $$$$$$$\  ______   ________  ______    ______    ______  
| $$  | $$|       \  /      \ | $$___\$$|   $$ \   /      \  /      \ | $$__/ $$ |      \ |        \|      \  |      \  /      \ 
| $$  | $$| $$$$$$$\|  $$$$$$\ \$$    \  \$$$$$$  |  $$$$$$\|  $$$$$$\| $$    $$  \$$$$$$\ \$$$$$$$$ \$$$$$$\  \$$$$$$\|  $$$$$$|
| $$  | $$| $$  | $$| $$    $$ _\$$$$$$\  | $$ __ | $$  | $$| $$  | $$| $$$$$$$\ /      $$  /    $$ /      $$ /      $$| $$   \$|
| $$__/ $$| $$  | $$| $$$$$$$$|  \__| $$  | $$|  \| $$__/ $$| $$__/ $$| $$__/ $$|  $$$$$$$ /  $$$$_|  $$$$$$$|  $$$$$$$| $$      
 \$$    $$| $$  | $$ \$$     \ \$$    $$   \$$  $$ \$$    $$| $$    $$| $$    $$ \$$    $$|  $$    \$$    $$ \$$    $$| $$      
  \$$$$$$  \$$   \$$  \$$$$$$$  \$$$$$$     \$$$$   \$$$$$$ | $$$$$$$  \$$$$$$$   \$$$$$$$ \$$$$$$$$ \$$$$$$$  \$$$$$$$ \$$      
                                                            | $$                                                                 
                                                            | $$                                                                 
                                                             \$$                                                                 
""")
while(True):
    print("\n")
    print("OneStopBazaar")
    print("Welcome to the Online Retail Store")
    print("---------------------------------------------")
    print("Please choose a number from the menu to proceed: ")
    table_main_menu = [['Number', 'Task'],['1', 'Admin LogIn'],
             ['2', 'User LogIn'], 
         ['3', 'User SignUp'], 
         ['4', 'Distributor LogIn'], 
         ['5', 'NGO Data'],
        ['6', 'Exit']]
    print(tabulate(table_main_menu, headers='firstrow', tablefmt = "fancy_grid"))

    
    #SHOULD WE MAKE A DISTRIBUTOR SIGN-UP?
    #NGO login/sign up

    input_landing_page = int(input("Enter the number from the menu: "))
    #ADMIN LOGIN
    system('clear')
    if (input_landing_page == 1):
        system('clear')
        print("""
  ______        ___                __         
 /      \       |  \              |  \          
|  $$$$$$\  ____| $$ ______ ____   \$$ _______  
| $$__| $$ /      $$|      \    \ |  \|       \ 
| $$    $$|  $$$$$$$| $$$$$$\$$$$\| $$| $$$$$$$
| $$$$$$$$| $$  | $$| $$ | $$ | $$| $$| $$  | $$
| $$  | $$| $$__| $$| $$ | $$ | $$| $$| $$  | $$
| $$  | $$ \$$    $$| $$ | $$ | $$| $$| $$  | $$
 \$$   \$$  \$$$$$$$ \$$  \$$  \$$ \$$ \$$   \$$
                                                
        """)
        print("\n---------------------------------------------\n")
        count = 0
        valid_admin = 0

        #TRANSACTIONS SYNTAX

        #cnx.start_transaction()
        #transaction_test_1 = """
        #UPDATE Product SET price = 50000 WHERE productID = 1
        #"""
        #cursor.execute(transaction_test_1)
        #cnx.commit()
        #cursor.execute("""
        #SELECT Product.price, Product.name, Product.productID from Product where Product.productID = 1;
        #""")
        #for row in cursor.fetchall():
        #    print(f"{row[0]} {row[1]} {row[2]}")

        
        while(count<3 and valid_admin == 0):
            query_auth_admin = """Select username,password from Admin"""
            username = input("Enter your username: ")
            password = input("Enter your password: ")
            cursor.execute(query_auth_admin)
            for row in cursor.fetchall():
                if (username) == row[0] and (password) == row[1]:
                    # store = row
                    # print(row)
                    valid_admin = 1
                    print("Authenticated\n")
                    break
            if valid_admin == 0:
                print("Invalid Username or password\n")
                count+=1
                print(f"{3-count} tries remaining\n")

        system('clear')
        while (valid_admin):
            print(f"\nWelcome {username}")
            table_admin_menu = {
                'Number': ['1','2','3','4','5','6','7','8', '9', '10', '11'],
                'Task' : ['View Quarterly Sales of the each Category',
                          'View Curated Sales Data for Each Category', 
                          'View Top 5 Customers(based on money spent)',
                          'Data of items in the Inventory for each storage type',
                          'Add Category', 
                          'View All Category',  
                          'View Ratings of Top 10 Delivery Partner and Wages',
                          'View Incomplete Orders and Status',
                          'View Products and Change Quantity in Inventory',
                          'Assign a Delivery Partner to Deliver Order',
                          'Log Out']
            }
            print(tabulate(table_admin_menu, headers = 'keys',tablefmt = "fancy_grid"))
            input_admin = int(input("Enter the number from the menu: "))
            if (input_admin == 1):
                query_report = """SELECT
Category.category_name AS Category,
SUM(`Order`.order_amount) AS Total_Sales_Amount,
SUM(`Order`.quantity) AS Total_Quantity_Sold
FROM
Category
JOIN Product ON Category.categoryID = Product.categoryID
JOIN `Order` ON Product.productID = `Order`.productID
JOIN Billing ON `Order`.orderID = Billing.orderID
WHERE
`Order`.date_order_placed >= DATE_SUB(NOW(), INTERVAL 3 MONTH)
GROUP BY
Category.category_name WITH ROLLUPMethod to pay (COD/UPI/card/wallet) : card
1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`online retail store`.`billing`, CONSTRAINT `Billing_ibfk_3` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`) ON UPDATE CASCADE
HAVING
Category IS NOT NULL"""
                cursor.execute(query_report)
                print("---------------------------------------------")
                for row in cursor.fetchall():
                    print(f"Category: {row[0]}\nSales from the Category (Rs.): {row[1]}\nQuantity sold (units): {row[2]}")
                    print("---------------------------------------------")
            elif (input_admin == 2):
                query_data = """SELECT
COALESCE(c.category_name, 'All Categories') AS Category,
YEAR(o.date_order_placed) AS Year,
MONTH(o.date_order_placed) AS Month,
SUM(o.order_amount) AS Sales,
COUNT(DISTINCT o.username) AS Customers,
COUNT(DISTINCT o.productID) AS Products
FROM
`Order` o
JOIN Product p ON o.productID = p.productID
JOIN Category c ON p.categoryID = c.categoryID
GROUP BY Category, Year, Month with ROLLUP
HAVING
Month is NOT NULL
ORDER BY Category, Year DESC, Month DESC;"""
                cursor.execute(query_data)
                print("---------------------------------------------")
                for row in cursor.fetchall():
                    print(f"Category: {row[0]}\nYear: {row[1]}\nMonth: {row[2]}\nSales: {row[3]}\nNumber of Distinct Customers: {row[4]}\nNumber of Distint Products from the Category: {row[5]}")
                    print("---------------------------------------------")

            elif (input_admin == 3):
                query_top_5_cust = """SELECT 
                CASE 
                WHEN GROUPING(username) = 1 THEN 'All Customers'
                ELSE username
                END AS Customer,
                SUM(order_amount) AS TotalAmount 
                FROM 
                    `Order`
                GROUP BY username with
                    ROLLUP
                HAVING 
                    username IS NOT NULL 
                ORDER BY 
                    TotalAmount DESC 
                LIMIT 
                    5;
                """
                cursor.execute(query_top_5_cust)
                print("---------------------------------------------")
                for row in cursor.fetchall():
                    print(row)
            elif (input_admin == 4):    
                query_inv = """SELECT storage_type, SUM(quantity) AS amt FROM Inventory Group by storage_type with ROLLUP having storage_type is not null"""
                cursor.execute(query_inv)
                for row in cursor.fetchall():
                    print(row)

            elif (input_admin == 5):
                #creates a new category and mandatorily inserts one product in it, no category is an empty category
                input_add_category = input("Enter the name of Category that you want to Add: ")
                #category_id = int(input("Enter Category ID: "))
                category_disc = float(input("Enter Category Discount: "))
                prod_add = input("Enter the name of product you want to add while making this category: ")
                #can we increase the product-ID, USING QUERY
                #prod_id = int(input("Enter Product ID: "))
                prod_quantity = int(input("Enter quantity in stock: "))
                prod_price = float(input("Enter price of product: "))
                prod_disc = float(input("Enter discount on product: "))
                prod_storage = input("Enter storage type: ")
                rate = None
                desc = None
                query_category = """INSERT INTO `Category`(category_name, category_discount) VALUES (%s,%s);"""

                query_cat_id = f"""
                SELECT Category.categoryID, Category.category_name 
                FROM
                Category
                WHERE 
                Category.category_name = '{input_add_category}';
                """
                val = (input_add_category, category_disc)
                cursor.execute(query_category, val)
                cursor.execute(query_cat_id)
                for row in cursor.fetchall():
                    id = row[0]
                query_prod = """INSERT INTO `Product`(categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"""
                
                val1 = (id, prod_add, prod_quantity, prod_price, prod_disc, prod_storage, rate, desc)
                
                cursor.execute(query_prod, val1)
                cnx.commit()

            elif (input_admin == 6):
                query = "select * from `Category`"
                cursor.execute(query)
                id = []
                name = []
                discount = []
                for row in cursor.fetchall():
                    id.append(row[0])
                    name.append(row[1])
                    discount.append(row[2])
                table_cat = {
                    "Category ID" : id,
                    "Category Name" : name,
                    "Category Discount" : discount
                }
                update_disc = input("Do you want to update category discount? (y/n): ")
                if update_prod == 'n':
                    continue
                elif update_prod == 'y':
                    prod_id_update = int(input("Enter the Product ID of the product you want to update: "))
                    

            elif (input_admin == 7):
                query_deliv_rate_wage = """SELECT deliveryID, first_name, last_name, rating, salary 
                                        FROM DeliveryPartner 
                                        ORDER BY rating 
                                        LIMIT 20"""
                cursor.execute(query_deliv_rate_wage)
                ids = []
                names = []
                ratings = []
                wages = []
                for row in cursor.fetchall(): 
                    ids.append(row[0])
                    names.append(row[1] + " " + row[2])
                    ratings.append(row[3])
                    wages.append(row[4])
                table_deliv_rate_wage = {"ID" : ids,
                                    "Name" : names,
                                     "Rating" : ratings,
                                     "Wage" : wages}
                print(tabulate(table_deliv_rate_wage, headers = 'keys', tablefmt='fancy_grid'))
            
            elif (input_admin == 8):
                query_order_stat = """
                SELECT orderID, username, status, date_order_placed
                FROM `Order`
                WHERE status = 'out_for_delivery' or status = 'order_placed'
                """
                cursor.execute(query_order_stat)
                id = []
                name = []
                stat = []
                date = []
                for row in cursor.fetchall():
                    id.append(row[0])
                    name.append(row[1])
                    stat.append(row[2])
                    date.append(row[3])
                table_order_stat = {"ID" : id,
                                    "UserName" : name,
                                    "Status" : stat,
                                    "Date Order Placed" : date}
                print(tabulate(table_order_stat, headers = 'keys', tablefmt='fancy_grid'))
            elif(input_admin == 9):
                query_prod_admin = """
                SELECT 
                Product.name, Product.productID, Product.quantity_in_stock
                FROM 
                Product
                """
                cursor.execute(query_prod_admin)
                prod = []
                prod_id = []
                quantity = []
                for row in cursor.fetchall():
                    prod.append(row[0])
                    prod_id.append(row[1])
                    quantity.append(row[2])
                table_prod_data = {"Product ID" : prod_id,
                                   "Product Name" : prod,
                                   "Quantity in Stock" : quantity}
                print(tabulate(table_prod_data, headers = 'keys', tablefmt = 'fancy_grid'))
                print("\n")
                update_prod = input("Do you want to update product quantity in the inventory? (y/n): ")
                if update_prod == 'n':
                    continue
                elif update_prod == 'y':
                    prod_id_update = int(input("Enter the Product ID of the product you want to update: "))
                    update_q = int(input("Updated Quantity: "))
                    if update_q != 0:
                        update_prod_quantity = f"""
                            UPDATE 
                            Product
                            SET 
                            quantity_in_stock = {update_q}
                            WHERE 
                            productID = {prod_id_update}"""
                        cursor.execute(update_prod_quantity)
                        cnx.commit()
                    else:
                        #TRANSACTION 
                        try:
                            cnx.autocommit = False
                            # Delete associated rows from Cart table
                            delete_from_cart = f"""
                                DELETE FROM
                                Cart
                                WHERE 
                                productID = {prod_id_update}"""
                            cursor.execute(delete_from_cart)
                            # Delete row from Product table
                            delete_from_product = f"""
                                DELETE FROM
                                Product 
                                WHERE
                                productID = {prod_id_update}
                                """
                            cursor.execute(delete_from_product)
                            cnx.commit()
                        except Exception as e:
                            print(e)
                            # rollback the transaction if there is an error
                            cnx.rollback()
                            print("Error while updating.")
            elif(input_admin == 10):
                query_order_placed = """
                SELECT orderID, username, status
                FROM `Order`
                WHERE status = 'order_placed'
                GROUP BY
                orderID, username, status
                """
                cursor.execute(query_order_placed)
                id = []
                name = []
                stat = []
                for row in cursor.fetchall():
                    id.append(row[0])
                    name.append(row[1])
                    stat.append(row[2])
                table_order_stat = {"ID" : id,
                                    "UserName" : name,
                                    "Status" : stat
                                    }
                print(tabulate(table_order_stat, headers = 'keys', tablefmt='fancy_grid'))
                print("\n")
                id_order = int(input("Choose order ID for order you want to assign a delivery partner to: "))
                #TRANSACTION
                try:
                    cnx.autocommit = False
                    query_free_deliv = f"""
                        SELECT 
                        deliveryID, first_name, last_name, `status (Occupied/Free)`, salary
                        FROM 
                        DeliveryPartner
                        WHERE
                        `status (Occupied/Free)` = 0
                        """
                    id = []
                    name = []
                    # 0 free, 1 occupied
                    stat = []
                    salary = []
                    cursor.execute(query_free_deliv)
                    for row in cursor.fetchall():
                        id.append(row[0])
                        name.append(row[1] + " " + row[2])
                        stat.append(row[3])
                        salary.append(row[4])
                    table_free_deliv = {"ID" : id,
                                    "Name" : name,
                                     "Free or Occupied" : stat,
                                     "Wage" : salary}
                    print(tabulate(table_free_deliv, headers = 'keys', tablefmt='fancy_grid'))
                    inp_deliv_assign = int(input("Enter the delivery ID of partner you want to assign the order to: "))
                    update_deliv = f"""
                    UPDATE 
                    DeliveryPartner 
                    SET
                    `status (Occupied/Free)` = {1},
                    orderID = {id_order}
                    WHERE
                    deliveryID = {inp_deliv_assign}
                    """
                    cursor.execute(update_deliv)
                    update_order_stat = f"""
                    UPDATE
                    `Order`
                    SET status = 'out_for_delivery'
                    WHERE
                    orderID = {id_order}
                    """
                    cursor.execute(update_order_stat)
                    cnx.commit()
                except :
                     # rollback the transaction if there is an error
                    cnx.rollback()
                    print("Error billing customer.")

            elif(input_admin == 11):
                break
            else:
                print("Invalid Input!")


    #USER LOGIN
    elif (input_landing_page == 2):
        system('clear')
        print("""
 __    __                               
|  \  |  \                              
| $$  | $$  _______   ______    ______  
| $$  | $$ /       \ /      \  /      \ 
| $$  | $$|  $$$$$$$|  $$$$$$\|  $$$$$$$
| $$  | $$ \$$    \ | $$    $$| $$   \$$
| $$__/ $$ _\$$$$$$\| $$$$$$$$| $$      
 \$$    $$|       $$ \$$     \| $$      
  \$$$$$$  \$$$$$$$   \$$$$$$$ \$$                                                      
        """)
        print("\n---------------------------------------------\n")
        count = 0
        valid_user = 0
        while(count<3 and valid_user == 0):
            query_auth_user = """Select username,password from Customer"""
            username = input("Enter your username: ")
            password = input("Enter your password: ")
            cursor.execute(query_auth_user)
            for row in cursor.fetchall():
                if (username) == row[0] and (password) == row[1]:
                    # store = row
                    # print(row)
                    valid_user = 1
                    print("Authenticated\n")
                    break
            if valid_user == 0:
                print("Invalid Username or password\n")
                count+=1
                print(f"{3-count} tries remaining\n")
        system('clear')
        while(valid_user):
            print(f"Welcome {username}")
            print("---------------------------------------------")
            print("Please choose a number from the menu to proceed: ")
            table_user = {'Number' : ['1', '2', '3', '4', '5', '6'],
              'Task' : ['View Categories', 'View Cart', 'Proceed To CheckOut', 'View Balance Left', 'View Order History', 'Exit To Main Menu']}
            print(tabulate(table_user, headers = 'keys', tablefmt='fancy_grid'))
            input_user = int(input("Enter the number from the menu: "))
            if (input_user == 1):
                query = "select category_name from Category"
                cursor.execute(query)
                i = 1
                print("\nSelect the Category from below or type exit: ")
                for row in cursor.fetchall():
                    print(f"{i}: {row[0]}")
                    i+=1
                inp_customer = input()
                if inp_customer != 'exit':
                    inp_category = int(inp_customer)
                    query2 = f"""select Product.productID, Product.name, Product.categoryID, Product.price from Category, Product
                    where Product.categoryID = {inp_category} group by Product.productID order by Product.productID asc
                    """
                    cursor.execute(query2)
                    for row in cursor.fetchall():
                        print(f"{row[0]}: {row[1]}")
                    #accomodating for one quantity inc at a time?
                    inp_id_choice = input("Enter the id of the product you want to add to cart or type exit: ")
                    if inp_id_choice != 'exit':
                        inp_id = int(inp_id_choice)
                        #TRANSACTION
                        try:
                            cnx.autocommit = False
                            check_quantity_query = f"SELECT quantity FROM Inventory WHERE productID = {inp_id}"
                            cursor.execute(check_quantity_query)
                            for row in cursor.fetchall():
                                current_quantity = row[0]
                                print(current_quantity)
                            #MODIFY, set quantity added to 1
                            if (current_quantity >= 1):
                                update_query = f"UPDATE Inventory SET quantity = {current_quantity - 1} WHERE productID = {inp_id}"
                                cursor.execute(update_query)
                                update_prod = f"UPDATE Product SET quantity_in_stock = {current_quantity - 1} WHERE productID = {inp_id}"
                                cursor.execute(update_prod)
                                query_3 =  f"""select Product.productID, Product.name, Product.price from Product
                                where Product.productID = {inp_id}
                                """
                                cursor.execute(query_3)
                                query_cart = """insert into Cart (billing_amount, productID, quantity, username) values (%s, %s, %s, %s)"""
                                for row in cursor.fetchall():
                                    id = row[0]
                                    quantity = 1
                                    cost = row[2]
                                val = (cost, id, quantity, username)
                                cursor.execute(query_cart,val)
                                cnx.commit ()
                            else:
                                print(f"Not enough quantity in stock for product.")
                        except Exception as e:
                            print(f"Error: {e}")
                            cnx.rollback()

            elif (input_user == 2):
                query_view_cart = f"""
                select 
                Cart.quantity, Cart.billing_amount, Product.productID, Product.name, Cart.productID, Cart.username 
                from 
                Product, Cart 
                where 
                Product.productID = Cart.productID"""
                cursor.execute(query_view_cart)
                bill = 0
                for row in cursor.fetchall():
                    if (row[5] == username):
                        print(f"item name: {row[3]}, quantity: {row[0]}")
                        bill = row[1]
                print(f"billing amount: {bill}")

            elif (input_user == 3):
                #checkout or placing an order
                print("Items in your cart: ")
                query_view_cart = f"""
                select 
                Cart.quantity, Cart.billing_amount, Product.productID, Product.name, Cart.productID, Cart.username 
                from 
                Product, Cart 
                where 
                Product.productID = Cart.productID"""

                last_id = """
                SELECT orderID 
                FROM `Order`
                ORDER BY orderID DESC
                LIMIT 1
                """
                id_l = 0
                cursor.execute(last_id)
                for row in cursor.fetchall():
                    id_l = row[0]
                print(id_l)

                bill_amount = bill
                # bill_amount = 0
                # for row in cursor.fetchall():
                #     if (row[5] == username):
                #         print(f"item name: {row[3]}, quantity: {row[0]}")
                #         bill_amount = row[1]
                # print(f"billing amount: {bill_amount}")

                ngo_donate = input("Do you want to donate to an ngo (y/n)? : ")
                if ngo_donate == 'y':
                    print("Select the Ngo ID from below: \n")
                    query_ngo = f"""select NGO.ngoID, NGO.name from NGO"""
                    cursor.execute(query_ngo)
                    for row in cursor.fetchall():
                        print(f"NGO ID: {row[0]}, NGO Name: {row[1]}")
                    
                    ngo_id = int(input())
                    amount_donated = round(float(input("Amount to donate : ")),2)
                else:
                    ngo_id = None
                    amount_donated = 0

                coupon_use = input("Do you want to use a coupon (y/n)? : ")
                if coupon_use == 'y':
                    print("Select the Coupon ID from below: \n")
                    query_coupon = f"""select * from `online retail store`.coupon c LIMIT 5;"""
                    cursor.execute(query_coupon)
                    for row in cursor.fetchall():
                        print(row)
                    coupon_id = int(input())
                else:
                    coupon_id = None
                #TRANSACTION: insert into order delete from cart
                method_to_pay = input("Method to pay (COD/UPI/card/wallet) : ")
                cursor.execute(query_view_cart)
                for row in cursor.fetchall():
                    if (row[5] == username):
                        print(f"item name: {row[3]}, quantity: {row[0]}")
                        bill = row[1]
                        query_insert = """insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (%s,%s, %s, %s, %s, %s, %s, %s)"""
                        query_remove_cart = f"""
                        DELETE FROM 
                        Cart 
                        WHERE 
                        username = '{str(username)}'
                        """
                        val = (id_l+1, username, 'order_placed', round(float(bill),2), row[2], row[0], 0, dt)
                        cursor.execute(query_insert,val)
                        cursor.execute(query_remove_cart)
                        cnx.commit ()
                ##TRANSACTION
                val = (method_to_pay, round(float(bill_amount),2), amount_donated, ngo_id, coupon_id, id_l)
                bill_customer(12,round(float(bill_amount),2),val)

            elif (input_user == 4):
                query_bal = f"Select username, balance from Customer where username = '{str(username)}' \n"
                cursor.execute(query_bal)
                for row in cursor.fetchall():
                    print(f"Greetings {row[0]}, the Balance in your Account is: Rs. {row[1]}")
            elif (input_user == 5):
                system('clear')
                query_hist = f"""
                SELECT `Order`.username, `Order`.status, `Order`.productID, Product.productID, Product.name , `Order`.orderID
                FROM `Order`, Product
                WHERE
                `Order`.productID = Product.productID
                AND
                `Order`.username = '{str(username)}'
                """
                cursor.execute(query_hist)
                stat = []
                prod = []
                order_id = []
                for row in cursor.fetchall():
                    order_id.append(row[5])
                    stat.append(row[1])
                    prod.append(row[4])
                    #print(f"Username: {row[0]}, Status: {row[1]}, Product Name: {row[4]}")
                table_order_hist = {"Order ID" : order_id,
                                    "Status" : stat,
                                    "Product" : prod}
                print(tabulate(table_order_hist, headers = 'keys', tablefmt = 'fancy_grid'))
            elif (input_user == 6):
                break

            else:
                print("Invalid Input!")

    #USER SIGN UP
    elif (input_landing_page == 3):
        system('clear')
        print("""    __    __                               
                    |  \  |  \                              
                    | $$  | $$  _______   ______    ______  
                    | $$  | $$ /       \ /      \  /      \ 
                    | $$  | $$|  $$$$$$$|  $$$$$$\|  $$$$$$$
                    | $$  | $$ \$$    \ | $$    $$| $$   \$$
                    | $$__/ $$ _\$$$$$$\| $$$$$$$$| $$      
                     \$$    $$|       $$ \$$     \| $$      
                      \$$$$$$  \$$$$$$$   \$$$$$$$ \$$      
                                                             """)
        print("\n---------------------------------------------\n")
        print("User SignUp")
        username = input("Set your username: ")
        password = input("Set your password: ")
        f_name = input("Enter First Name: ")
        l_name = input("Enter Last Name: ")
        phone = input("Enter phone number: ")
        mail = input("Enter email id: ")
        subs_type = 'regular'
        #hardcoded 
        coupon_id = 99999
        h_no = int(input("Enter house number: "))
        street = input("Enter street name: ")
        city = input("Enter city: ")
        pin = int(input("Enter 6 digit pin code: "))
        balance = 5000

        query_insert = """insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode, balance) values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s, %s,%s,%s)"""
        val = (username, password, f_name, l_name, phone, mail, subs_type, coupon_id, h_no, street, city, pin, balance)
        cursor.execute(query_insert,val)
        cnx.commit ()
        print ('Successful SignUp')
        system('clear')
        print("Redirecting to Home Page")
        #print("\nThe SQL connection is closed.")
    
    elif (input_landing_page == 4):
        system('clear')
        print("""
                _______    __               __              __  __                    __                         
                |       \ |  \            |  \              |  \|  \                  |  \                        
                | $$$$$$$\ \$$  _______  _| $$_     ______   \$$| $$____   __    __  _| $$_     ______    ______  
                | $$  | $$|  \ /       \|   $$ \   /      \ |  \| $$    \ |  \  |  \|   $$ \   /      \  /      \ 
                | $$  | $$| $$|  $$$$$$$ \$$$$$$  |  $$$$$$\| $$| $$$$$$$\| $$  | $$ \$$$$$$  |  $$$$$$\|  $$$$$$$
                | $$  | $$| $$ \$$    \   | $$ __ | $$   \$$| $$| $$  | $$| $$  | $$  | $$ __ | $$  | $$| $$   \$$
                | $$__/ $$| $$ _\$$$$$$\  | $$|  \| $$      | $$| $$__/ $$| $$__/ $$  | $$|  \| $$__/ $$| $$      
                | $$    $$| $$|       $$   \$$  $$| $$      | $$| $$    $$ \$$    $$   \$$  $$ \$$    $$| $$      
                 \$$$$$$$  \$$ \$$$$$$$     \$$$$  \$$       \$$ \$$$$$$$   \$$$$$$     \$$$$   \$$$$$$  \$$      
                                                                                                                  
                                                                                                                  
                                                                                                                  """)
        print("\n---------------------------------------------\n")
        while(True):
            query_auth_dist = """Select distributorID, password from Distributor"""
            id_dist = int(input("Enter your Distributor ID: "))
            cursor.execute(query_auth_dist)
            valid_user = 0
            for row in cursor.fetchall():
                if (id_dist) == row[0]:
                    store = row
                    print(row)
                    valid_user = 1
                    break
            if valid_user:
                break
            else: 
                print("Invalid ID\n")

        while(True):
            password = input("Enter your password: ")
            if password in store:
                print("Authenticated")
                valid_dist = 1
                break
            else:
                print("Invalid Password \n")
        system('clear')
        while(valid_dist):
            print(f"Welcome Distributor ID : {id_dist}")
            print("---------------------------------------------")
            print("Please choose a number from the menu to proceed: ")
            table_distributor = {"Number" : ['1', '2', '3'],
                                 "Task" : ["View Products you Distribute", 
                                           "Add a New Product", 
                                           "Exit to Main Menu"]}
            print(tabulate(table_distributor, headers = 'keys', tablefmt='fancy_grid'))
            input_dist = int(input("Enter the number from the menu: "))
            if (input_dist == 1):
                system('clear')
                query_view_dist = f"""
                SELECT Distributor.distributorID, Distributor.productID, Product.productID, Product.name
                FROM
                Distributor, Product
                WHERE 
                Distributor.productID = Product.productID
                AND
                Distributor.distributorID = {id_dist}
                """
                prod_id = []
                prod_name = []
                cursor.execute(query_view_dist)
                for row in cursor.fetchall():
                    prod_id.append(row[2])
                    prod_name.append(row[3])
                table_prod_dist = {"Product ID" : prod_id,
                                   "Product Name" : prod_name}
                print(tabulate(table_prod_dist, headers = 'keys', tablefmt = 'fancy_grid'))
                print('\n')
            elif (input_dist == 2):
                system('clear')
                prod_id_new = int(input("Enter the Product ID of the Product you want to add: "))
                query_prod_name = f"""
                SELECT Product.productID, Product.name
                FROM 
                Product
                WHERE
                Product.productID = {prod_id_new}"""
                name = ''
                cursor.execute(query_prod_name)
                for row in cursor.fetchall():
                    name = row[1]
                query_id_exist = f"""
                SELECT Distributor.distributorID, Distributor.productID
                FROM
                Distributor
                WHERE 
                Distributor.distributorID = {id_dist}
                """
                cursor.execute(query_id_exist)
                exist = 0
                for row in cursor.fetchall():
                    if (row[1] == prod_id_new):
                        exist = 1
                        break
                if (exist):
                    print("Sorry cannot add this product, you are already a distributor")
                else:
                    dist_deets = f"""
                    SELECT * 
                    FROM 
                    Distributor
                    WHERE 
                    Distributor.distributorID = {id_dist}"""
                    cursor.execute(dist_deets)
                    for row in cursor.fetchall():
                        one = row[0] 
                        two = row[1]
                        three = row[3]
                        four = row[4]
                        five = row[5]
                        six = row[6]
                        seven = row[7]
                        eight = row[8]
                        nine = row[9]
                    query_add_dist = "insert into Distributor (distributorID, password, productID, phone_number, email_address, commission, house_number, street_name, city, pincode) values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"
                    val = (one,two,prod_id_new,three,four,five,six,seven,eight,nine)
                    cursor.execute(query_add_dist, val)
                    cnx.commit()
                    print(f"\n Successfully Added {name} \n")

            elif (input_dist == 3):
                system('clear')
                break
        
        system('clear')
    elif(input_landing_page == 5):
        system('clear')
        print("""
                 __    __   ______    ______  
                |  \  |  \ /      \  /      \ 
                | $$\ | $$|  $$$$$$\|  $$$$$$$
                | $$$\| $$| $$ __\$$| $$  | $$
                | $$$$\ $$| $$|    \| $$  | $$
                | $$\$$ $$| $$ \$$$$| $$  | $$
                | $$ \$$$$| $$__| $$| $$__/ $$
                | $$  \$$$ \$$    $$ \$$    $$
                 \$$   \$$  \$$$$$$   \$$$$$$ """)
        print("\n---------------------------------------------\n")
        ngo_funds = f"""select * from NGO"""
        cursor.execute(ngo_funds)
        ngo_id = []
        ngo_name = []
        reg_num = []
        funds = []
        for row in cursor.fetchall():
            ngo_id.append(row[0])
            ngo_name.append(row[1])
            reg_num.append(row[2])
            funds.append(row[4])
        table_ngo = {'NGO ID' : ngo_id,
                     'Name of NGO' : ngo_name,
                     'Registeration Number' : reg_num,
                     'Funds Raised' : funds
                     }
        print(tabulate(table_ngo, headers = 'keys', tablefmt='fancy_grid'))
        
        go_back = int(input('Press 1 to go back to main screen: '))
        while (go_back != 1):
            continue
        system('clear')

    elif(input_landing_page == 6):
        system('clear')
        print("""
         ________  __                            __        __      __                     
        |        \|  \                          |  \      |  \    /  \                    
         \$$$$$$$$| $$____    ______   _______  | $$   __  \$$\  /  $$  ______   __    __ 
           | $$   | $$    \  |      \ |       \ | $$  /  \  \$$\/  $$  /      \ |  \  |  $
           | $$   | $$$$$$$\  \$$$$$$\| $$$$$$$\| $$_/  $$   \$$  $$  |  $$$$$$\| $$  | $$
           | $$   | $$  | $$ /      $$| $$  | $$| $$   $$     \$$$$   | $$  | $$| $$  | $$
           | $$   | $$  | $$|  $$$$$$$| $$  | $$| $$$$$$\     | $$    | $$__/ $$| $$__/ $$
           | $$   | $$  | $$ \$$    $$| $$  | $$| $$  \$$\    | $$     \$$    $$ \$$    $$
            \$$    \$$   \$$  \$$$$$$$ \$$   \$$ \$$   \$$     \$$      \$$$$$$   \$$$$$$ """)
        print("\n\n")
        break
    
    else:
        print("Sorry, invalid number")
        print("Please try again\n")
cnx . close ()
if (cnx):
    cnx.close()
