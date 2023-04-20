from tkinter import *
from tkinter import messagebox
import mysql.connector


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
    

query_view_cart = f"""select Cart.quantity, Cart.billing_amount, Product.productID, Product.name, Cart.productID, Cart.username from Product, Cart where Product.productID = Cart.productID"""
c.execute(query_view_cart)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)


Label(frame, text="Product Name   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Quantity   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
# Label(frame, text="Quantity sold    ", font=("Times", "16", "bold")).grid(row=1,  column=3, pady=10)

r_num = 2
bill = 0
for row in c.fetchall():
    # USERNAME is USED
    if (row[5] == 'c1'):
        Label(frame, text=f"{row[3]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
        Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
        bill += row[1]
    r_num += 1

Label(frame, text=f'Billing Amount : {bill}', font=("Times", "16")).grid(row=r_num, column=1, pady=5)

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num+1, column=2, pady=10)

ws.mainloop()