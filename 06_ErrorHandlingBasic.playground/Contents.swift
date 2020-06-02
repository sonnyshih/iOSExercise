enum NameInputError:Error {
    case empty
    case isNumber
}

func getUserFullName(firstName:String, lastName:String) throws -> String {
    
    if firstName == "" ||  lastName == "" {
        throw NameInputError.empty
    } else if Int(firstName) != nil || Int(lastName) != nil {
        throw NameInputError.isNumber
    }
    
    let fullName = firstName + " " + lastName
    return fullName
}


do {
    try getUserFullName(firstName: "123", lastName: "World")
    
} catch NameInputError.empty {
    print("Empty Name")
} catch NameInputError.isNumber {
    print("Input some number")
} catch {
    print("something wrong")
}


