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
Label(frame, text="Username   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Purchase   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
r_num = 2
for row in c.fetchall():
     Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
     Label(frame, text=f"{row[1]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
    #  Label(frame, text=row, 
    #     font=("Times", "16", "")).grid(row=r_num,  columnspan=3, pady=10)
     r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=2, pady=10)

ws.mainloop()