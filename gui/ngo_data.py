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
ngo_funds = f"""select * from NGO"""
c.execute(ngo_funds)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)


Label(frame, text="NGO ID   ", font=("Times", "16", "bold")).grid(row=1,  column=1, pady=10)
Label(frame, text="NGO name   ", font=("Times", "16", "bold")).grid(row=1,  column=2, pady=10)
Label(frame, text="Registration no    ", font=("Times", "16", "bold")).grid(row=1,  column=3, pady=10)
Label(frame, text="Funds Raised    ", font=("Times", "16", "bold")).grid(row=1,  column=4, pady=10)

r_num = 2
for row in c.fetchall():
    Label(frame, text=f"{row[0]}   ", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
    Label(frame, text=f"{row[1]}   ", font=("Times", "16", "")).grid(row=r_num,  column=2, pady=10)
    Label(frame, text=f"{row[2]}    ", font=("Times", "16", "")).grid(row=r_num,  column=3, pady=10)
    Label(frame, text=f"{row[4]}    ", font=("Times", "16", "")).grid(row=r_num,  column=4, pady=10)
    # Label(frame, text=f"Category: {row[0]}\nSales from the Category (Rs.): {row[1]}\nQuantity sold (units): {row[2]}", 
    #     font=("Times", "16", "")).grid(row=r_num,  columnspan=3, pady=10)
    r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num, column=4, pady=10)

ws.mainloop()