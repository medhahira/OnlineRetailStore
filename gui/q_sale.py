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

def logOut():
   resp = messagebox.askquestion('', 'Are you sure?')
   if resp == 'yes':
        ws.destroy()
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
r_num = 1
for row in c.fetchall():
        Label(frame, text=f"Category: {row[0]}\nSales from the Category (Rs.): {row[1]}\nQuantity sold (units): {row[2]}", 
            font=("Times", "16", "")).grid(row=r_num,  columnspan=3, pady=10)
        r_num += 3

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=1, pady=10)

ws.mainloop()