from tkinter import *
from tkinter import messagebox
import mysql.connector
from tabulate import tabulate
from os import system


cnx = mysql.connector.connect(user='root', password='Pam@2302', 
                        host='localhost', database='online retail store')
c = cnx.cursor()

ws = Tk()
ws.title('Python Guides')
ws.geometry('500x400')
ws.config(bg="#447c84")
ws.attributes('-fullscreen',True)


def createAccount():
    ws.destroy()
    import register


def submit():
    t = login_type.get()
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
        if t == "":
            warn = "Login Type can't be empty."
        else:
            if t == "admin":
                query_auth_admin = """Select username,password from Admin"""
                c.execute(query_auth_admin)
                valid_admin = 0
                for row in c.fetchall():
                    if (u) == row[0] and (p) == row[1]:
                        valid_admin = 1
                        ws.destroy()
                        import admin_app
                if valid_admin == 0:
                    messagebox.showerror('', f'Invalid Username or password. Please try again')
            
            elif t == "user":
                query_auth_user = """Select username,password from Customer"""
                c.execute(query_auth_user)
                valid_user = 0
                for row in c.fetchall():
                    if (u) == row[0] and (p) == row[1]:
                        valid_user = 1
                        ws.destroy()
                        import user_app
                if valid_user == 0:
                    messagebox.showerror('', f'Invalid Username or password. Please try again')


            else:
                messagebox.showerror('', "Can only login as admin and user") 
    else:
        messagebox.showerror('', warn)


def logOut():
   resp = messagebox.askquestion('', 'Are you sure?')
   if resp == 'yes':
        ws.destroy()
        
   else:
        pass
       
# frame
frame = Frame(ws, padx=20, pady=20)
frame.pack_propagate(False)
frame.pack(expand=True)


# labels
Label(frame, text="Login", font=("Times", "24", "bold")).grid(row=0,  columnspan=3, pady=10) #..place(x=170, y=10)

Label(frame, text='Login Type', font=("Times", "14")).grid(row=1, column=1, pady=5) #.place(x=50, y=70)

Label(frame, text='Enter Username', font=("Times", "14")).grid(row=2, column=1, pady=5) #.place(x=50, y=70)

Label(frame, text='Enter Password', font=("Times", "14")).grid(row=3, column=1, pady=5) #.place(x=50, y=110)

# Entry
login_type = Entry(frame, width=20)
uname = Entry(frame, width=20)
pwd = Entry(frame, width=20, show="*")
# uname.place(x=220, y=70)
# pwd.place(x=220, y=110)
login_type.grid(row=1, column=2)
uname.grid(row=2, column=2)
pwd.grid(row=3, column=2)

# button 
reg = Button(frame, text="Create Account", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=createAccount)
reg.grid(row=4, column=1, pady=10)

sub = Button(frame, text="Login", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=submit)
sub.grid(row=4, column=2, pady=10)

logout = Button(frame, text="Logout", padx=20, pady=10, relief=RAISED, font=("Times", "14", "bold"), command=logOut)
logout.grid(row=4, column=3, pady=10)

ws.mainloop()