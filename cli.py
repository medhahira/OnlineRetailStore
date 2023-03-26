import mysql.connector
from datetime import datetime

# YYYY-MM-DD hh:mm:ss
now = datetime.now()
dt= now.strftime("%Y-%m-%d %H:%M:%S")

cnx = mysql.connector.connect(user='root', password='*', 
                              host='localhost', database='online retail store')

cursor = cnx.cursor()

while(True):
    print("\n")
    print("OneStopBazaar")
    print("Welcome to the Online Retail Store")
    print("---------------------------------------------")
    print("Please choose a number from the menu to proceed: ")
    
    print("""1. Admin LogIn 
2. User LogIn
3. User SignUp
4. Distributor LogIn
5. Exit""")
          
    #SHOULD WE MAKE A DISTRIBUTOR SIGN-UP?

    input_landing_page = int(input("Enter the number: "))
    #ADMIN LOGIN
    if (input_landing_page == 1):
        print("ADMIN")
        print("---------------------------------------------")
        count = 0
        valid_admin = 0
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


        while (valid_admin):
            print(f"\nWelcome {username}")
            print("""Please choose a number from the menu to proceed: 
1. View Quarterly Sales of the each Category
2. View Curated Sales Data for Each Category 
3. View Top 5 Customers(based on money spent)
4. Data of items in the Inventory for each storage type
5. Add Category
6. View All Category
7. Log out\n""")
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
                input_add_category = input("Enter the name of Category that you want to Add: ")
                #PLEASE CHECK IF WE CAN ALSO INSERT ONE PRODUCT WHILE WE MAKE A CATEGORY, I HAVE LEFT THAT OUT RN
                #input_prod = input(f"Enter the name of one product to add in {input_add_category}")
                category_id = int(input("Enter Category ID: "))
                category_disc = float(input("Enter Category Discount: "))
                query_category = """INSERT INTO `Category`(categoryID, category_name, category_discount) VALUES (%s,%s,%s);"""
                val = (category_id, input_add_category, category_disc)
                cursor.execute(query_category, val)
                cnx.commit()

            elif (input_admin == 6):
                query = "select * from `Category`"
                cursor.execute(query)
                for row in cursor.fetchall():
                    print(f"Category ID: {row[0]}, Category Name: {row[1]}, Category Discount: {row[2]}")

            elif (input_admin == 7):
                break
                
            else:
                print("Invalid Input!")



    #USER LOGIN
    elif (input_landing_page == 2):
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

        while(valid_user):
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

            elif (input_user == 2):
                query_view_cart = f"""select Cart.quantity, Cart.billing_amount, Product.productID, Product.name, Cart.productID, Cart.username from Product, Cart where Product.productID = Cart.productID"""
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
                    amount_donated = None

                coupon_use = input("Do you want to use a coupon (y/n)? : ")
                if coupon_use == 'y':
                    print("Select the Coupon ID from below: \n")
                    query_coupon = f"""select * from `online retail store`.coupon c where c.expiry_date < dt LIMIT 5;"""
                    cursor.execute(query_coupon)
                    for row in cursor.fetchall():
                        print(row)
                    coupon_id = int(input())
                else:
                    coupon_id = None

                method_to_pay = input("Method to pay (COD/UPI/card/wallet) : ")

                query_insert = """insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (%s, %s, %s, %s, %s, %s, %s)"""
                val = (111, method_to_pay, round(float(bill_amount),2), amount_donated, ngo_id, coupon_id, 12)
                cursor.execute(query_insert,val)
                cnx.commit ()

            elif (input_user == 4):
                break

            else:
                print("Invalid Input!")

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
    elif(input_landing_page == 5):
        break
    else:
        print("Sorry, invalid number")
        print("Please try again\n")
cnx . close ()
if (cnx):
    cnx.close()
