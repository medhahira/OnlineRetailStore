from tkinter import *
from tkinter import messagebox
# import sqlite3
import mysql.connector
import time
from datetime import datetime
from tabulate import tabulate
from os import system


try:
        cnx = mysql.connector.connect(user='root', password='Pam@2302', 
                              host='localhost', database='online retail store')
        c = cnx.cursor()
        c.execute("Select username,password from Admin")
        un = []
        pd = []
        for i in c.fetchall():
            un.append(i[0])
            pd.append(i[1])
        
except Exception as ep:
    messagebox.showerror('', ep)

ws = Tk()
ws.title('Python Guides')
ws.geometry('500x400')
ws.config(bg="#447c84")
ws.attributes('-fullscreen',True)


# def createAccount():
#     ws.destroy()
#     import register


def submit():
    u = uname.get()
    p = pwd.get()
    check_counter=0
    if u == "":
       warn = "Username can't be empty"
    else:
        check_counter += 1
    if p == "":
        warn = "Password can't be empty"
    else:
        check_counter += 1
    if check_counter == 2:
        if ((u == un[0] and p == pd[0]) or (u == un[1] and p == pd[1])):
            ws.destroy()
            import app
        
        else:
            messagebox.showerror('', 'invalid username or password')
    else:
        messagebox.showerror('', warn)
       
# frame
frame = Frame(ws, padx=20, pady=20)
frame.pack_propagate(False)
frame.pack(expand=True)


# labels
Label(
    frame, 
    text="Admin Login", 
    font=("Times", "24", "bold") 
    ).grid(row=0,  columnspan=3, pady=10) #..place(x=170, y=10)

Label(
    frame, 
    text='Enter Username', 
    font=("Times", "14")
    ).grid(row=1, column=1, pady=5) #.place(x=50, y=70)

Label(
    frame, 
    text='Enter Password', 
    font=("Times", "14")
    ).grid(row=2, column=1, pady=5) #.place(x=50, y=110)

# Entry
uname = Entry(frame, width=20)
pwd = Entry(frame, width=20, show="*")
# uname.place(x=220, y=70)
# pwd.place(x=220, y=110)
uname.grid(row=1, column=2)
pwd.grid(row=2, column=2)

# button 
# reg = Button(
#     frame, 
#     text="Create Account", 
#     padx=20, pady=10, 
#     relief=RAISED, 
#     font=("Times", "14", "bold"), 
#     command=createAccount
#     )

sub = Button(
    frame, 
    text="Login", 
    padx=20, 
    pady=10, 
    relief=RAISED, 
    font=("Times", "14", "bold"), 
    command=submit
    )

# reg.grid(row=3, column=1, pady=10)
sub.grid(row=3, column=2, pady=10)

ws.mainloop()