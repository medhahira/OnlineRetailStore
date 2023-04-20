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
        import user_app
   else:
        pass

def clear_frame():
   for widgets in frame.winfo_children():
      widgets.destroy()
    
# USERNAME is used
query_bal = f"Select username, balance from Customer where username = 'c1' \n"
c.execute(query_bal)

frame = Frame(ws,padx=20,pady=20)
frame.pack(expand=True)

r_num = 1
for row in c.fetchall():
    # USERNAME is USED
    Label(frame, text=f"Greetings {row[0]}, the Balance in your Account is: Rs. {row[1]}", font=("Times", "16", "")).grid(row=r_num,  column=1, pady=10)
    r_num += 1

logout = Button(frame, text="Back", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=r_num+1, column=2, pady=10)

ws.mainloop()