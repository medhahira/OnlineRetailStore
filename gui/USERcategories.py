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
    

def viewProducts():
    cid = c_id.get()
    clear_frame()
    query2 = f"""select Product.productID, Product.name, Product.categoryID, Product.price from Category, Product
                where Product.categoryID = {cid} group by Product.productID order by Product.productID asc
                """
    c.execute(query2)
    Label(frame, text="Product ID   ", font=("Times", "10", "bold")).grid(row=1,  column=1, pady=10)
    Label(frame, text="Product Name   ", font=("Times", "10", "bold")).grid(row=1,  column=2, pady=10)
    Label(frame, text="Product Price    ", font=("Times", "10", "bold")).grid(row=1,  column=3, pady=10)

    Label(frame, text="Product ID   ", font=("Times", "10", "bold")).grid(row=1,  column=5, pady=10)
    Label(frame, text="Product Name   ", font=("Times", "10", "bold")).grid(row=1,  column=6, pady=10)
    Label(frame, text="Product Price    ", font=("Times", "10", "bold")).grid(row=1,  column=7, pady=10)

    i = 0
    r_num = 2
    for row in c.fetchall():
        if (i<15):
            Label(frame, text=f"{row[0]}   ", font=("Times", "10", "")).grid(row=r_num,  column=1, pady=10)
            Label(frame, text=f"{row[1]}   ", font=("Times", "10", "")).grid(row=r_num,  column=2, pady=10)
            Label(frame, text=f"{row[3]}    ", font=("Times", "10", "")).grid(row=r_num,  column=3, pady=10)
            r_num += 1
            i+=1
        else:
            Label(frame, text=f"{row[0]}   ", font=("Times", "10", "")).grid(row=r_num-i,  column=5, pady=10)
            Label(frame, text=f"{row[1]}   ", font=("Times", "10", "")).grid(row=r_num-i,  column=6, pady=10)
            Label(frame, text=f"{row[3]}    ", font=("Times", "10", "")).grid(row=r_num-i,  column=7, pady=10)
            r_num += 1
    
    Label(frame, text='Enter Product ID to add to cart', font=("Times", "14")).grid(row=r_num, column=1, pady=5)
    p_id = Entry(frame, width=20)
    p_id.grid(row=r_num, column=2)

    add_product = Button(frame, text="Add Product", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"),command=lambda: addProduct(p_id))
    add_product.grid(row=r_num+1, column=2, pady=10)

    logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
    logout.grid(row=r_num+1, column=1, pady=10)

def addProduct(p_id):
    pid = p_id.get()
    query_3 =  f"""select Product.productID, Product.name, Product.price from Product
    where Product.productID = {pid}
    """
    c.execute(query_3)
    
    query_cart = """insert into Cart (billing_amount, productID, quantity, username) values (%s, %s, %s, %s)"""
    for row in c.fetchall():
        id = row[0]
        quantity = 1
        cost = row[2]
    # USERNAME is used
    val = (cost, id, quantity, 'c1')
    c.execute(query_cart,val)
    cnx.commit ()

query = "select categoryID, category_name from Category"
c.execute(query)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)


Label(frame, text="Category ID   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Sales from Category   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
# Label(frame, text="Quantity sold    ", font=("Times", "16", "bold")).grid(row=1,  column=3, pady=10)

r_num = 2
for row in c.fetchall():
    Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
    Label(frame, text=f"{row[1]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
    # Label(frame, text=f"{row[2]}    ", font=("Times", "16", "")).grid(row=r_num,  column=3, pady=10)
    r_num += 1

Label(frame, text='Enter Category ID', font=("Times", "14")).grid(row=r_num, column=1, pady=5)
c_id = Entry(frame, width=20)
c_id.grid(row=r_num, column=2)

view_category = Button(frame, text="View Products", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=viewProducts)
view_category.grid(row=r_num+1, column=2, pady=10)

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num+1, column=1, pady=10)

ws.mainloop()