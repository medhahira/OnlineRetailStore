from tkinter import *
from tkinter import messagebox
import mysql.connector


cnx = mysql.connector.connect(user='root', password='Pam@2302', 
                        host='localhost', database='online retail store')
c = cnx.cursor()

ws = Tk()
ws.title('Python Guides')
ws.geometry('500x300')
ws.config(bg="#000000")
ws.attributes('-fullscreen',True)

# functions
# def goBack():
#     import login

def logOut():
   resp = messagebox.askquestion('', 'Are you sure?')
   if resp == 'yes':
        ws.destroy()
        import login
   else:
        pass
   

def createAccount():
    username = uName.get()
    password = pwd.get()
    f_name = fName.get()
    l_name = lName.get()
    phone = pNo.get()
    mail = email.get()
    subs_type = 'regular'
    #hardcoded 
    coupon_id = 99999
    h_no = hNo.get()
    street = stNo.get()
    city = cityN.get()
    pin = pinNo.get()
    balance = 5000
    
    check_counter = 0
    if username == "":
        warn = "Username can't be empty"
    else:
        check_counter += 1
    if password == "":
        warn = "Password can't be empty"
    else:
        check_counter += 1
    if check_counter == 2:
        query_insert = """insert into Customer (username, password, first_name, last_name, phone_number, email_address, subscription_type, couponID, house_number, street_name, city, pincode, balance) values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s, %s,%s,%s)"""
        val = (username, password, f_name, l_name, phone, mail, subs_type, coupon_id, h_no, street, city, pin, balance)
        c.execute(query_insert,val)
        cnx.commit()
        messagebox.showerror('', 'Successful SignUp')
    else:
        messagebox.showerror('', warn)


# frames
frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)

# labels
Label(frame, text="New User", font=("Times", "24", "bold")).grid(row=0,  columnspan=3, pady=10)

Label(frame, text='Set your username', font=("Times", "14")).grid(row=1, column=1, pady=5)
Label(frame, text='Set your password', font=("Times", "14")).grid(row=2, column=1, pady=5)
Label(frame, text='Enter First Name', font=("Times", "14")).grid(row=3, column=1, pady=5)
Label(frame, text='Enter Last Name', font=("Times", "14")).grid(row=4, column=1, pady=5)
Label(frame, text='Enter phone number', font=("Times", "14")).grid(row=5, column=1, pady=5)
Label(frame, text='Enter email id', font=("Times", "14")).grid(row=6, column=1, pady=5)
Label(frame, text='Enter house number', font=("Times", "14")).grid(row=7, column=1, pady=5)
Label(frame, text='Enter street name', font=("Times", "14")).grid(row=8, column=1, pady=5)
Label(frame, text='Enter city', font=("Times", "14")).grid(row=9, column=1, pady=5)
Label(frame, text='Enter 6 digit pin code', font=("Times", "14")).grid(row=10, column=1, pady=5)


# Entries
uName = Entry(frame, width=20)
pwd = Entry(frame, width=20, show="*")
fName = Entry(frame, width=20)
lName = Entry(frame, width=20)
pNo = Entry(frame, width=20)
email = Entry(frame, width=20)
hNo = Entry(frame, width=20)
stNo = Entry(frame, width=20)
cityN = Entry(frame, width=20)
pinNo = Entry(frame, width=20)


uName.grid(row=1, column=2)
pwd.grid(row=2, column=2)
fName.grid(row=3, column=2)
lName.grid(row=4, column=2)
pNo.grid(row=5, column=2)
email.grid(row=6, column=2)
hNo.grid(row=7, column=2)
stNo.grid(row=8, column=2)
cityN.grid(row=9, column=2)
pinNo.grid(row=10, column=2)

# button 
# back = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=goBack)
# back.grid(row=11, column=1, pady=10)

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=11, column=1, pady=10)

reg = Button(frame, text="Create Account", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=createAccount)
reg.grid(row=11, column=2, pady=10)

ws.mainloop()