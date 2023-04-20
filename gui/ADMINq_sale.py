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
        import admin_app
   else:
        pass

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

c.execute(query_report)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)


Label(frame, text="Category   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Sales from Category   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
Label(frame, text="Quantity sold    ", font=("Times", "16", "bold")).grid(row=1,  column=3, pady=10)

r_num = 2
for row in c.fetchall():
    Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
    Label(frame, text=f"{row[1]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
    Label(frame, text=f"{row[2]}    ", font=("Times", "16", "")).grid(row=r_num,  column=3, pady=10)
    # Label(frame, text=f"Category: {row[0]}\nSales from the Category (Rs.): {row[1]}\nQuantity sold (units): {row[2]}", 
    #     font=("Times", "16", "")).grid(row=r_num,  columnspan=3, pady=10)
    r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=3, pady=10)

ws.mainloop()