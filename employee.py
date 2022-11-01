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
    elif(choice == 3):
        print("Searching a employee")
    elif (choice == 4):
        print("updating employee")
    elif(choice == 5):
        print("delete a employee")
    elif(choice==6):
        break