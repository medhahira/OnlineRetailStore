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

query_data = """SELECT
COALESCE(c.category_name, 'All Categories') AS Category,
YEAR(o.date_order_placed) AS Year,
MONTH(o.date_order_placed) AS Month,
SUM(o.order_amount) AS Sales,
COUNT(DISTINCT o.username) AS Customers,
COUNT(DISTINCT o.productID) AS Products
FROM
`Order` o
JOIN Product p ON o.productID = p.productID
JOIN Category c ON p.categoryID = c.categoryID
GROUP BY Category, Year, Month with ROLLUP
HAVING
Month is NOT NULL
ORDER BY Category, Year DESC, Month DESC;"""

c.execute(query_data)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)
Label(frame, text="Category   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Year   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
Label(frame, text="Month    ", font=("Times", "16", "bold")).grid(row=1,  column=3, pady=10)
Label(frame, text="Sales    ", font=("Times", "16", "bold")).grid(row=1,  column=4, pady=10)
Label(frame, text="Distinct Customers    ", font=("Times", "16", "bold")).grid(row=1,  column=5, pady=10)
Label(frame, text="Distint Products    ", font=("Times", "16", "bold")).grid(row=1,  column=6, pady=10)
r_num = 2
for row in c.fetchall():
     Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
     Label(frame, text=f"{row[1]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
     Label(frame, text=f"{row[2]}    ", font=("Times", "16", "")).grid(row=r_num,  column=3, pady=10)
     Label(frame, text=f"{row[3]}    ", font=("Times", "16", "")).grid(row=r_num,  column=4, pady=10)
     Label(frame, text=f"{row[4]}    ", font=("Times", "16", "")).grid(row=r_num,  column=5, pady=10)
     Label(frame, text=f"{row[5]}    ", font=("Times", "16", "")).grid(row=r_num,  column=6, pady=10)

     # Label(frame, text=f"Category: {row[0]}\nYear: {row[1]}\nMonth: {row[2]}\nSales: {row[3]}\nNumber of Distinct Customers: {row[4]}\nNumber of Distint Products from the Category: {row[5]}", 
     #    font=("Times", "10", "")).grid(row=r_num,  columnspan=3, pady=10)
     r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=6, pady=10)

ws.mainloop()