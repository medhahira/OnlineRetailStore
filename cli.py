import mysql.connector

cnx = mysql.connector.connect(user='root', password='*', 
                              host='localhost', database='online retail store')

cursor = cnx.cursor()

while(True):
    print("OneStopBazaar")
    print("Welcome to the Online Retail Store")
    print("---------------------------------------------")
    print("Please choose a number from the menu to proceed: ")
    
    print("""1. Admin LogIn 
2. User LogIn
3. User SignUp""")
    input_landing_page = int(input())
    #ADMIN LOGIN
    if (input_landing_page == 1):
        print("ADMIN")
        print("---------------------------------------------")
        while(True):
            query_auth_admin = """Select username,password from Admin"""
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
            if valid_user:
                break
            else: 
                print("Invalid Username\n")

        while(True):
            print("Enter your password: ")
            password = input()
            if password in store:
                print("Authenticated")
                break
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
            print("Enter your password: ")
            password = input()
            if password in store:
                print("Authenticated\n")
                print(f"Welcome {username}")
                print("---------------------------------------------")
                print("Please choose a number from the menu to proceed: ")
                print("""1. Choose Products 
2. View Cart
3. Proceed To Checkout""")
                input_user = int(input())
                if (input_user == 1):
                    query = "select name from Product"
                    cursor.execute(query)
                    for row in cursor.fetchall():
                        print(row)
            else:
                print("Invalid Password")
        break



    #USER SIGN UP
    elif (input_landing_page == 3):
        print("User SignUp")
        print("Set your username: ")
        username = input()
        print("Set your password: ")
        password = input()
        print("Enter First Name ")
        f_name = input()
        print("Enter Last Name ")
        l_name = input()
        print("Enter phone number ")
        phone = input()
        print("Enter email id ")
        mail = input()
        subs_type = 'regular'
        #hardcoded 
        coupon_id = 99999
        print("Enter house number: ")
        h_no = int(input())
        print("Enter street name: ")
        street = input()
        print("Enter city: ")
        city = input()
        print("Enter 6 digit pin code: ")
        pin = int(input())

        query_insert = """insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode) values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s, %s,%s)"""
        val = (username, password, f_name, l_name, phone, mail, subs_type, coupon_id, h_no, street, city, pin)
        cursor.execute(query_insert,val)
        cnx.commit ()
        print ('Successful SignUp')
        print("Redirecting to Home Page")
        
            #print("\nThe SQL connection is closed.")
        
    else:
        print("Sorry, invalid number")
        print("Please try again\n")
cnx . close ()
if (cnx):
    cnx.close()
