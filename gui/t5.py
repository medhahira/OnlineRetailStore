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

query_top_5_cust = """SELECT 
CASE 
WHEN GROUPING(username) = 1 THEN 'All Customers'
ELSE username
END AS Customer,
SUM(order_amount) AS TotalAmount 
FROM 
    `Order`
GROUP BY username with
    ROLLUP
HAVING 
    username IS NOT NULL 
ORDER BY 
    TotalAmount DESC 
LIMIT 
    5;
"""
c.execute(query_top_5_cust)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)
r_num = 1
for row in c.fetchall():
     Label(frame, text=row, 
        font=("Times", "16", "")).grid(row=r_num,  columnspan=3, pady=10)
     r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=1, pady=10)

ws.mainloop()