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

def logOut():
   resp = messagebox.askquestion('', 'Are you sure?')
   if resp == 'yes':
        ws.destroy()
        import login
   else:
        pass
   
def view_categories():
    ws.destroy()
    import USERcategories
      
def view_cart():
    ws.destroy()
    import USERcart

def checkout():
    ws.destroy()
    import USERcheckout

def balance_left():
    ws.destroy()
    import USERbalance


# frames
frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)

# labels
Label(frame, text=f"Welcome!!", font=("Times", "24", "bold")).grid(row=0,  columnspan=3, pady=10)


# button
quarter_sale = Button(frame, text="View Categories", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=view_categories)
quarter_sale.grid(row=1, column=1, pady=10)

curated_sale = Button(frame, text="View Cart", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=view_cart)
curated_sale.grid(row=2, column=1, pady=10)

top5 = Button(frame, text="Proceed To CheckOut", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=checkout)
top5.grid(row=3, column=1, pady=10)

inventory_storage = Button(frame, text="View Balance Left", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=balance_left)
inventory_storage.grid(row=4, column=1, pady=10)

ws.mainloop()