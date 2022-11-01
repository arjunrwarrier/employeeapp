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