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

query_deliv_rate_wage = """SELECT deliveryID, first_name, last_name, rating, salary 
                                        FROM DeliveryPartner 
                                        ORDER BY rating 
                                        LIMIT 10"""
c.execute(query_deliv_rate_wage)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)
Label(frame, text="DeliveryID   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Firstname   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
Label(frame, text="Lastname    ", font=("Times", "16", "bold")).grid(row=1,  column=3, pady=10)
Label(frame, text="Rating    ", font=("Times", "16", "bold")).grid(row=1,  column=4, pady=10)
Label(frame, text="Salary    ", font=("Times", "16", "bold")).grid(row=1,  column=5, pady=10)
r_num = 2
for row in c.fetchall():
     Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
     Label(frame, text=f"{row[1]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
     Label(frame, text=f"{row[2]}    ", font=("Times", "16", "")).grid(row=r_num,  column=3, pady=10)
     Label(frame, text=f"{row[3]}    ", font=("Times", "16", "")).grid(row=r_num,  column=4, pady=10)
     Label(frame, text=f"{row[4]}    ", font=("Times", "16", "")).grid(row=r_num,  column=5, pady=10)

     # Label(frame, text=f"Category: {row[0]}\nYear: {row[1]}\nMonth: {row[2]}\nSales: {row[3]}\nNumber of Distinct Customers: {row[4]}\nNumber of Distint Products from the Category: {row[5]}", 
     #    font=("Times", "10", "")).grid(row=r_num,  columnspan=3, pady=10)
     r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=6, pady=10)

ws.mainloop()