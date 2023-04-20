from tkinter import *
from tkinter import messagebox
import mysql.connector


cnx = mysql.connector.connect(user='root', password='Pam@2302', 
                        host='localhost', database='online retail store')
c = cnx.cursor()

ws = Tk()
ws.title('Python Guides')
ws.geometry('500x300')
ws.config(bg="#4D4DFF")
ws.attributes('-fullscreen',True)

# functions
# def goBack():
#     import login

def logOut():
   resp = messagebox.askquestion('', 'Are you sure?')
   if resp == 'yes':
        ws.destroy()
   else:
        pass
   
def q_sale():
    import q_sale
      
def c_sale():
    import c_sale

def t5():
    import t5

def inv_storage():
    import inv_store

def add_c():
    import add_categ

def all_c():
    import all_categ

def t10_rating():
    import top10_rating

def inc_ord():
    import incomplete_order

# frames
frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)

# labels
Label(frame, text=f"Welcome!!", font=("Times", "24", "bold")).grid(row=0,  columnspan=3, pady=10)


# button
quarter_sale = Button(frame, text="View Quarterly Sales of the each Category", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=q_sale)
quarter_sale.grid(row=1, column=1, pady=10)

curated_sale = Button(frame, text="View Curated Sales Data for each Category", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=c_sale)
curated_sale.grid(row=2, column=1, pady=10)

top5 = Button(frame, text="View Top 5 Customers(based on money spent)", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=t5)
top5.grid(row=3, column=1, pady=10)

inventory_storage = Button(frame, text="Data of items in the Inventory for each storage type ", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=inv_storage)
inventory_storage.grid(row=4, column=1, pady=10)

add_category = Button(frame, text="Add Category", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=add_c)
add_category.grid(row=5, column=1, pady=10)

all_category = Button(frame, text="View All Category", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=all_c)
all_category.grid(row=6, column=1, pady=10)

view_rating = Button(frame, text="View Ratings of Top 10 Delivery Partner and Wages", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=t10_rating)
view_rating.grid(row=7, column=1, pady=10)

incomp_ord = Button(frame, text="View Incomplete Orders and Status", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=inc_ord)
incomp_ord.grid(row=8, column=1, pady=10)

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=9, column=1, pady=10)

# reg = Button(frame, text="Create Account", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=createAccount)
# reg.grid(row=9, column=2, pady=10)

ws.mainloop()