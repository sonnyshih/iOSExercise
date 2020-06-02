struct Size{
    var width:Float = 5.0
    var heigh:Float = 8.0
    func area() -> Float {
        return width * heigh
    }
}

var size:Size = Size(width: 20.0, heigh: 30.0)
print("\(size.width)")
print("\(size.heigh)")
size.width = 50.0
print("\(size.width)")

var newSize:Size = Size()
print("\(newSize.width)")
print("\(newSize.area())")

struct Name {
    var firstName:String
    var lastName:String
    
    func fullName()->String {
        return firstName + " " + lastName
    }
}

var myName = Name(firstName: "Hello", lastName: "World")
print("First Name:\(myName.firstName)")
print("Last Name:\(myName.lastName)")
myName.firstName = "Thomas"

print("Full Name:\(myName.fullName())")


/* ##### Struct 與 Class 區別 Start ##### */
//1. Class 可以繼承，但Struct 不可以
//2. Struct 是 value Type (實值型別)
//   Class 是  referrence type (參考型別)
//3. Struct 儲存簡單資料
//   Class  儲存資料與操作

struct SizeStruct{
    var width:Float = 5.0
    var heigh:Float = 8.0
    func area() -> Float {
        return width * heigh
    }
}

class SizeClass{
    var width:Float = 5.0
    var heigh:Float = 8.0
    func area() -> Float {
        return width * heigh
    }
}

// referrence type (參考型別)
var sizeClass1 = SizeClass()
var sizeClass2 = sizeClass1     // sizeClass2 和 sizeClass1是指向同一個記憶體位置
sizeClass1.width = 100
print("sizeClass1.width = \(sizeClass1.width)" )
print("sizeClass2.width = \(sizeClass2.width)" )    //sizeClass2.width 也會被改變

// value Type (實值型別)
var sizeStruct1 = SizeStruct()
var sizeStruct2 = sizeStruct1
sizeStruct1.heigh = 100
print("sizeStruct1.heigh = \(sizeStruct1.heigh)")
print("sizeStruct2.heigh = \(sizeStruct2.heigh)")   //sizeStruct2.heigh 不會被改變


/* ##### Struct 與 Class 區別 End ##### */
