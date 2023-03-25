import mysql.connector
from datetime import datetime

# datetime object containing current date and time
now = datetime.now()
 
print("now =", now)

# dd/mm/YY H:M:S
dt= now.strftime("%Y-%m-%d %H:%M:%S")

cnx = mysql.connector.connect(user='root', password='*', 
                              host='localhost', database='online retail store')

cursor = cnx.cursor()
query = "select `Order`.orderID, `Order`.username,`Order`.productID from `Order` where `Order`.username = 'arn'"
cursor.execute(query)
for row in cursor.fetchall():
    print(row)
while(True):
    print("OneStopBazaar")
    print("Welcome to the Online Retail Store")
    print("---------------------------------------------")
    print("Please choose a number from the menu to proceed: ")
    
    print("""1. Admin LogIn 
2. User LogIn
3. User SignUp
4. Distributor LogIn""")
          
    #SHOULD WE MAKE A DISTRIBUTOR SIGN-UP?

    input_landing_page = int(input("Enter the number: "))
    #ADMIN LOGIN
    if (input_landing_page == 1):
        print("ADMIN")
        print("---------------------------------------------")
        while(True):
            query_auth_admin = """Select username,password from Admin"""
            username = input("Enter your username: ")
            cursor.execute(query_auth_admin)
            valid_user = 0
            for row in cursor.fetchall():
                if (username) == row[0]:
                    store = row
                    print(row)
                    valid_user = 1
                    break
            if valid_user:
                break
            else: 
                print("Invalid Username\n")

        while(True):
            password = input("Enter your password: ")
            if password in store:
                print("Authenticated")
                print("\n")
                print(f"Welcome {username}")
                print("""Please choose a number from the menu to proceed: 
1. View Quarterly Sales of the each Category
2. View Curated Sales Data for Each Category 
3. View Top 5 Customers(based on money spent)""")
                input_admin = int(input("Enter the number: "))
                if (input_admin == 1):
                    #to insert a menu option with which we can run this olap query
                    #I HAVE MODIFIED THE QUERY A LITTLE, please take a look
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
    Category.category_name WITH ROLLUP
HAVING
    Category IS NOT NULL"""
                    cursor.execute(query_report)
                    print("---------------------------------------------")
                    for row in cursor.fetchall():
                        print(f"Category: {row[0]}\nSales from the Category (Rs.): {row[1]}\nQuantity sold (units): {row[2]}")
                        print("---------------------------------------------")
                    break
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

                    break
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
            else:
                print("Invalid Password \n")
        break

    #USER LOGIN
    elif (input_landing_page == 2):
        while(True):
            query_auth_admin = """Select username,password from Customer"""
            print("Enter your username: ")
            username = input()
            cursor.execute(query_auth_admin)
            valid_user = 0
            for row in cursor.fetchall():
                if (username) in row:
                    store = row
                    print(row)
                    valid_user = 1
                    break
            if not valid_user:
                print("Invalid Username")
            else:
                break
        while(True):
            password = input("Enter your password: ")
            if password in store:
                print("Authenticated\n")
                print(f"Welcome {username}")
                print("---------------------------------------------")
                print("Please choose a number from the menu to proceed: ")
                print("""1. View Categories
2. View Cart
3. Proceed To Checkout
4. Exit to Main Menu""")
                input_user = int(input("Enter the number from the menu: "))
                if (input_user == 1):
                    query = "select category_name from Category"
                    cursor.execute(query)
                    i = 1
                    print("\nSelect the Category from below: ")
                    for row in cursor.fetchall():
                        print(f"{i}: {row[0]}")
                        i+=1
                    inp_category = int(input())
                    query2 = f"""select Product.productID, Product.name, Product.categoryID, Product.price from Category, Product
                    where Product.categoryID = {inp_category}
                    """
                    cursor.execute(query2)
                    for row in cursor.fetchall():
                        print(f"{row[0]}: {row[1]}")
                    #accomodating for one quantity inc at a time?
                    inp_id = int(input("Enter the id of the product you want to add to cart: "))
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
                    break
                elif (input_user == 2):
                    query_view_cart = f"""select Cart.quantity, Cart.billing_amount, Product.productID, Product.name, Cart.productID, Cart.username from Product, Cart where Product.productID = Cart.productID"""
                    cursor.execute(query_view_cart)
                    for row in cursor.fetchall():
                        if (row[5] == username):
                            print(f"item name: {row[3]}, quantity: {row[0]}")
                    bill = row[1]
                    print(f"billing amount: {bill}")
                    break
                elif (input_user == 3):
                    #checkout or placing an order
                    print("Items in your cart: ")
                    query_view_cart = f"""select Cart.quantity, Cart.billing_amount, Product.productID, Product.name, Cart.productID, Cart.username from Product, Cart where Product.productID = Cart.productID"""
                    cursor.execute(query_view_cart)
                    
                    
                    for row in cursor.fetchall():
                        if (row[5] == username):
                            print(f"item name: {row[3]}, quantity: {row[0]}")
                            bill = row[1]
                            query_insert = """insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (%s, %s, %s, %s, %s, %s, %s, %s)"""
                            val = (12, username, 'order_received', round(float(bill),2), row[2], row[0], 0, dt)
                            cursor.execute(query_insert,val)
                            cnx.commit ()
                    
                    break

                elif (input_user == 4):
                    break
            else:
                print("Invalid Password")



    #USER SIGN UP
    elif (input_landing_page == 3):
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

        query_insert = """insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s, %s,%s)"""
        val = (username, password, f_name, l_name, phone, mail, subs_type, coupon_id, h_no, street, city, pin)
        cursor.execute(query_insert,val)
        cnx.commit ()
        print ('Successful SignUp')
        print("Redirecting to Home Page")
        #print("\nThe SQL connection is closed.")
    elif (input_landing_page == 4):
        while(True):
            query_auth_dist = """Select distributorID,password from Distributor"""
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
                break
            else:
                print("Invalid Password \n")
        break

    else:
        print("Sorry, invalid number")
        print("Please try again\n")
cnx . close ()
if (cnx):
    cnx.close()
