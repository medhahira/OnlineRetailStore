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
   

def createCategory():
    #creates a new category and mandatorily inserts one product in it, no category is an empty category
    c_name = cName.get()
    c_id = cID.get()
    category_disc = cDiscount.get()
    p_name = pName.get()
    #can we increase the product-ID, USING QUERY
    p_id = pID.get()
    prod_quantity = pQuantity.get()
    prod_price = pPrice.get()
    prod_disc = pDiscount.get()
    prod_storage = storage.get()
    rate = None
    desc = None
    
    check_counter = 0
    if c_name == "":
        warn = "Category Name can't be empty"
    else:
        check_counter += 1
    if c_id == "":
        warn = "Category ID can't be empty"
    else:
        check_counter += 1
    if p_name == "":
        warn = "Product Name can't be empty"
    else:
        check_counter += 1
    if p_id == "":
        warn = "Product ID can't be empty"
    else:
        check_counter += 1
    if check_counter == 4:
        try:
            query_category = """INSERT INTO `Category`(categoryID, category_name, category_discount) VALUES (%s,%s,%s);"""
            query_prod = """INSERT INTO `Product`(productID, categoryID, name, quantity_in_stock, price, discount, storage_type, rating, description) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"""
            val = (c_id, c_name, category_disc)
            val1 = (p_id, c_id, p_name, prod_quantity, prod_price, prod_disc, prod_storage, rate, desc)
            c.execute(query_category, val)
            c.execute(query_prod, val1)
            cnx.commit()
            messagebox.showerror('', 'Category Successful Added')
        except Exception as ep:
            messagebox.showerror('', ep)
    else:
        messagebox.showerror('', warn)


# frames
frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)

# labels
Label(frame, text="New Category", font=("Times", "24", "bold")).grid(row=0,  columnspan=3, pady=10)

Label(frame, text='Enter Catogory Name', font=("Times", "14")).grid(row=1, column=1, pady=5)
Label(frame, text='Enter Catogory ID', font=("Times", "14")).grid(row=2, column=1, pady=5)
Label(frame, text='Enter Category Discount', font=("Times", "14")).grid(row=3, column=1, pady=5)
Label(frame, text='Enter Product Name', font=("Times", "14")).grid(row=4, column=1, pady=5)
Label(frame, text='Enter Product ID', font=("Times", "14")).grid(row=5, column=1, pady=5)
Label(frame, text='Enter Product Quantity', font=("Times", "14")).grid(row=6, column=1, pady=5)
Label(frame, text='Enter Product Price', font=("Times", "14")).grid(row=7, column=1, pady=5)
Label(frame, text='Enter Product  Discount', font=("Times", "14")).grid(row=8, column=1, pady=5)
Label(frame, text='Storage type', font=("Times", "14")).grid(row=9, column=1, pady=5)


# Entries
cName = Entry(frame, width=20)
cID = Entry(frame, width=20)
cDiscount = Entry(frame, width=20)
pName = Entry(frame, width=20)
pID = Entry(frame, width=20)
pQuantity = Entry(frame, width=20)
pPrice = Entry(frame, width=20)
pDiscount = Entry(frame, width=20)
storage = Entry(frame, width=20)

cName.grid(row=1, column=2)
cID.grid(row=2, column=2)
cDiscount.grid(row=3, column=2)
pName.grid(row=4, column=2)
pID.grid(row=5, column=2)
pQuantity.grid(row=6, column=2)
pPrice.grid(row=7, column=2)
pDiscount.grid(row=8, column=2)
storage.grid(row=9, column=2)


# button
logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=10, column=1, pady=10)

reg = Button(frame, text="Create Category", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=createCategory)
reg.grid(row=10, column=2, pady=10)

ws.mainloop()