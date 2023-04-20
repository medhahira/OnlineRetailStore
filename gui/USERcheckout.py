from tkinter import *
from tkinter import messagebox
import mysql.connector

from datetime import datetime
now = datetime.now()
dt= now.strftime("%Y-%m-%d %H:%M:%S")

cnx = mysql.connector.connect(user='root', password='*', 
                        host='localhost', database='online retail store')
c = cnx.cursor()

ws = Tk()
ws.title('Python Guides')
ws.geometry('500x300')
ws.config(bg="#000000")
ws.attributes('-fullscreen',True)

def logOut():
   resp = messagebox.askquestion('', 'Are you sure?')
   if resp == 'yes':
        ws.destroy()
        import user_app
   else:
        pass

def clear_frame():
   for widgets in frame.winfo_children():
      widgets.destroy()
    
def checkout_now():
    query_insert = """insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (%s, %s, %s, %s, %s, %s, %s)"""
    val = (111, method_to_pay.get(), round(float(bill),2), amount_donated.get(), ngo_id.get(), coupon_id, 12)
    c.execute(query_insert,val)
    cnx.commit ()
    clear_frame()
    Label(frame, text="Order Placed", font=("Times", "18", "bold")).grid(row=0,  column=1, pady=10)
    logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
    logout.grid(row=3, column=1, pady=10)
    

query_view_cart = f"""select Cart.quantity, Cart.billing_amount, Product.productID, Product.name, Cart.productID, Cart.username from Product, Cart where Product.productID = Cart.productID"""
c.execute(query_view_cart)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)


Label(frame, text="Items in your cart", font=("Times", "16", "bold")).grid(row=0,  column=1, pady=10)
Label(frame, text="Product Name   ", font=("Times", "14", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Quantity   ", font=("Times", "14", "bold")).grid(row=1,  column=2, pady=10)
Label(frame, text="Product Name   ", font=("Times", "14", "bold")).grid(row=1,  column=4, pady=10)
Label(frame, text="Quantity   ", font=("Times", "14", "bold")).grid(row=1,  column=5, pady=10)

r_num = 2
bill = 0
i = 0
for row in c.fetchall():
    # USERNAME is USED
    if (row[5] == 'c1'):
        if (i == 0):
            Label(frame, text=f"{row[3]}   ", font=("Times", "12", "")).grid(row=r_num,  column=1, pady=10)
            Label(frame, text=f"{row[0]}   ", font=("Times", "12", "")).grid(row=r_num,  column=2, pady=10)
            bill += row[1]
            query_insert = """insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (%s, %s, %s, %s, %s, %s, %s, %s)"""
            val = (12, 'c1', 'order_received', round(float(bill),2), row[2], row[0], 0, dt) # USERNAME is used
            c.execute(query_insert,val)
            cnx.commit ()
            i = 1
        else:
            Label(frame, text=f"{row[3]}   ", font=("Times", "12", "")).grid(row=r_num,  column=4, pady=10)
            Label(frame, text=f"{row[0]}   ", font=("Times", "12", "")).grid(row=r_num,  column=5, pady=10)
            bill += row[1]
            query_insert = """insert into `Order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (%s, %s, %s, %s, %s, %s, %s, %s)"""
            val = (12, 'c1', 'order_received', round(float(bill),2), row[2], row[0], 0, dt) # USERNAME is used
            c.execute(query_insert,val)
            cnx.commit ()
            i = 0
            r_num += 1

Label(frame, text=f'Billing Amount : {bill}', font=("Times", "16")).grid(row=r_num, column=1, pady=5)


ngo_funds = f"""select * from NGO"""
c.execute(ngo_funds)

Label(frame, text="NGOs", font=("Times", "14", "bold")).grid(row=r_num+2, column=1, pady=5)
row_no = r_num+3
i = 0
for row in c.fetchall():
    if (i != 5):
        Label(frame, text=f"{row[0]}:   {row[1]}", font=("Times", "12", "")).grid(row=row_no,  column=i+1, pady=10)
        i += 1
    else:
        i = 0
        row_no += 1

Label(frame, text='NGO ID to donate', font=("Times", "14")).grid(row=row_no+1, column=1, pady=5)
ngo_id = Entry(frame, width=20)
ngo_id.grid(row=row_no+1, column=2)

Label(frame, text='Amount to donate', font=("Times", "14")).grid(row=row_no+2, column=1, pady=5)
amount_donated = Entry(frame, width=20)
amount_donated.grid(row=row_no+2, column=2)

coupon_id = None

Label(frame, text='Method to pay', font=("Times", "14")).grid(row=row_no+3, column=1, pady=5)
method_to_pay = Entry(frame, width=20)
method_to_pay.grid(row=row_no+3, column=2)

checkout = Button(frame, text="checkout", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=checkout_now)
checkout.grid(row=row_no+4, column=6, pady=10)

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=row_no+5, column=6, pady=10)

ws.mainloop()