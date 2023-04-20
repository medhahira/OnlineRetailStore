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

query_inv = """SELECT storage_type, SUM(quantity) AS amt FROM Inventory Group by storage_type with ROLLUP having storage_type is not null"""
c.execute(query_inv)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)
Label(frame, text="Storage Type   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="Amount   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
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