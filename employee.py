import mysql.connector

mydb = mysql.connector.connect(host = 'localhost', user = 'root', password = '', database = 'employeedb')

mycursor = mydb.cursor()


while True:
    print("Select an option from the menu ")
    print("1. Add employee")
    print("2. View all employee")
    print("3. Search a employee")
    print("4. Update a employee")
    print("5. Delete a employee")
    print("6.exit")

    choice = int(input("Enter an option: "))
    if(choice == 1):
        print("employee enter selected")
        empcode = input("Enter employee code: ")
        empname = input("Enter employee name: ")
        designation = input("Enter the designation: ")
        salary = input("Enter the salary: ")
        compname = input("Enter the companyname: ")
        phone = input("Enter the phone number: ")
        email = input("Enter the email id: ")
        password = input("Enter the password: ") 

        sql = 'INSERT INTO `employees`(`empcode`, `empname`, `designation`, `salary`, `companyname`, `phone`, `emailid`, `password`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)'
        data = (empcode,empname,designation,salary,compname,phone,email,password)
        mycursor.execute(sql,data)
        mydb.commit()
        print("Employee data inserted successfully.")
    elif(choice == 2):
        print("View employee")
        sql = "SELECT * FROM `employees`"
        mycursor.execute(sql)
        result = mycursor.fetchall()
        for i in result:
            print(i)
    elif(choice == 3):
        print("Searching a employee")
        empc = input("Enter the empcode to search: ")
        sql = "SELECT `id`, `empcode`, `empname`, `designation`, `salary`, `companyname`, `phone`, `emailid`, `password` FROM `employees` WHERE `empcode`="+empc
        mycursor.execute(sql)
        result = mycursor.fetchall()
        print(result)
    elif (choice == 4):
        print("updating employee")
        empc = input("Enter the Employee Code: ")
        empname = input("Enter employee name to update: ")
        designation = input("Enter the designation to update: ")
        salary = input("Enter the salary to update: ")
        compname = input("Enter the companyname to update: ")
        phone = input("Enter the phone number to update: ")
        email = input("Enter the email id to update: ")
        password = input("Enter the password to update: ") 

        sql = "UPDATE `employees` SET `empname`='"+empname+"',`designation`='"+designation+"',`salary`='"+salary+"',`companyname`='"+compname+"',`phone`='"+phone+"',`emailid`='"+email+"',`password`='"+password+"' WHERE `empcode`="+empc
        mycursor.execute(sql)
        mydb.commit()
        print("Data updated successfully.")

    elif(choice == 5):
        print("delete a employee")
        empc = input("Enter the employee code to delete: ")
        sql = "DELETE FROM `employees` WHERE `empcode`="+empc
        mycursor.execute(sql)
        mydb.commit()
        print("Data deleted successfully.")
    elif(choice==6):
        break