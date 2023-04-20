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

query_order_stat = """
SELECT orderID, username, status
FROM `Order`
WHERE status = 'out_for_delivery' or status = 'order_placed'
group by orderID, username, status
"""
c.execute(query_order_stat)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)
Label(frame, text="Order ID   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="username   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
Label(frame, text="Status    ", font=("Times", "16", "bold")).grid(row=1,  column=3, pady=10)
# Label(frame, text="Date    ", font=("Times", "16", "bold")).grid(row=1,  column=4, pady=10)
r_num = 2
for row in c.fetchall():
     Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
     Label(frame, text=f"{row[1]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
     Label(frame, text=f"{row[2]}    ", font=("Times", "16", "")).grid(row=r_num,  column=3, pady=10)
     # Label(frame, text=f"{row[3]}    ", font=("Times", "16", "")).grid(row=r_num,  column=4, pady=10)

     # Label(frame, text=f"Category: {row[0]}\nYear: {row[1]}\nMonth: {row[2]}\nSales: {row[3]}\nNumber of Distinct Customers: {row[4]}\nNumber of Distint Products from the Category: {row[5]}", 
     #    font=("Times", "10", "")).grid(row=r_num,  columnspan=3, pady=10)
     r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=6, pady=10)

ws.mainloop()