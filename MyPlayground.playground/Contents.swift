var x = 2   // 變數
let y = 18  // 常數

var myNumber:Int = 10   // 整數

let gravityNumber:Float = 9.8   // 浮點數
var mathNumber:Double = 3.1415  // 雙精度浮點數

var hh:Float = Float(myNumber)  // int 轉float

let numDosentChang: Int = 5
Float(numDosentChang) / 2

var isTheLightOn:Bool = true;
let helloWorld:String =  "hello world"
let name = "Peter";
helloWorld + ", " + name

var theFact = "My Name is \(name)"
theFact = "I am \(myNumber+2) years old"

var theDialog = "My mon said, \"Life was like a box of chocolates\"."
theDialog.lowercased()  // 變小寫
theDialog.uppercased()  // 變大寫

// Array
var animalArray = ["cat", "dog", "lion", "tiger"]
animalArray[0]
animalArray.count
animalArray.append("rabbit")
print(animalArray)

animalArray.insert("cow", at: 2)
print(animalArray)

animalArray.remove(at: 0)
print(animalArray)

var anotherAnimalArray:[String] = ["pony", "sheep", "monkey"]
animalArray = animalArray + anotherAnimalArray
print(animalArray)

var emptyBag:[String] = []  // Define empty array
var numberBag = [Int]()     // Define empty array (和上面宣告是一樣的)


// Dictionary
var fruitDict = ["red":"apple", "yellow":"banana", "green":"mango"]
fruitDict["red"]
fruitDict["brown"]  // display the "nil"

fruitDict["green"] = "watermelon"   // change the value
fruitDict.updateValue("kiwi", forKey: "green") // same as upper

fruitDict["orange"] = "orange";     // add new element (same as upper)
fruitDict.updateValue("peach", forKey: "pink")

fruitDict["red"] = nil      // remove the element
fruitDict.removeValue(forKey: "yellow") // remove the element (same as upper)

var score:[String: Int] = ["english":80, "chinese":85, "sport":90]  // define type of the dictionary

print(score)


// Switch 1
let name1 = "Thomas"

switch name1 {
case "Thomas":
    print("That's me")

case "David":
    print("That's my father")

case "Helen":
    print("That's my mother")

case "Brendar":
    print("That's my sister")

default:
    print("Who are you?")

}


// Switch 2
let price = 75
switch price {

case 100, 200:
    print("too expensive")

case 60...80:
    print("ok")

case 50:
    print("cheap")

default:
    print("the price has to be 200, 100 or 50")
}

// for each
var animalArray1 = ["cat", "dog", "lion", "tiger"]
for animal in animalArray1 {
    print(animal)
}

// 產生全閉範圍
// Closed Range Operator a...b 1...10
for index in 1...10 {
    print("Hello \(index)")
}

for _ in 1...10 {   // only print 10 times
    print("Hi!")
}

// 產生半閉範圍
// Half-Open Rnage Operator a..<b 1..<5
for index in 1..<5 {    // only 1~4
    print("hi \(index)")
}

// 利用餘數 %
for index in 1...10 where index % 2 == 0 {
    print(index)
}

// 印出dictionary 的 key 和value
var fruitDict1 = ["red":"apple", "yellow":"banana", "green":"mango"]
for (key, value) in fruitDict1 {
    print(key + " : " + value)
}

// Tuple 元組
let colors = ("red", "orange", "yellow", "green", "blue")
print(colors.0)

let someTuple = ("Hello", 3.1415, true, ["apple", "banana"])
print(someTuple.3[0])

var fruitTuple = (red:"apple", yellow:"banana",green:"mango")
print(fruitTuple.red)
print(fruitTuple.0)


// while loop
var index1 = 1
while index1<=10 {
    print(index1)
    index1+=1
}

// repeat while
var myCounter = 1
repeat {
    print("Just do it \(myCounter) time")
    myCounter+=1
    
} while myCounter<11


// function
func makeCake(){
    print("Cream the egg and sugar")
    print("Add Butter to it")
    print("Add Flour to it and mix")
    print("Bake it with oven")
}
makeCake()

func eat(foodname:String){
    print("I want to have \(foodname)")
}

eat(foodname: "Hamburger")

func drink(berverageNam1:String, berverageNam2:String ){
    print("I want to drink \(berverageNam1) and \(berverageNam2)")
}

drink(berverageNam1: "Cola", berverageNam2: "Red bull")

// function has the return value
func add(number1:Int, number2:Int) -> Int{
    let result = number1 + number2
    return result
}

let answer = add(number1: 3, number2: 5)
print("answer=\(answer)")

func multiply(number1:Int, number2:Int) -> String{
    return "\(number1) * \(number2) = \(number1 * number2)"
}

print(multiply(number1: 5, number2: 7))


// 外部參數與內容參數 (withWidth, withHeigh是外部參數名。 width, heigh是內部參數名)
func calculateArea(withWidth width:Float, withHeigh heigh:Float) ->Float{
    return width * heigh
}

print(calculateArea(withWidth: 20.5, withHeigh: 30.5))


// Closure 閉包
let helloClosure = {
    print("Hello Everybody")
}

// 同上面的寫法
/*
let helloClosure:()->() = {
    print("Hello Everybody")
}
*/

helloClosure()


let eatClosure = {
    (foodName:String) in
    print("I want to have \(foodName)")
}

// 同上面的寫法
/*
let eatClosure:(String)->() = {
    (foodName:String) in
    print("I want to have \(foodName)")
}
*/

eatClosure("Apple Pie")


let addClosure = {
    (number1:Int, number2:Int) -> Int in
    let result = number1 * number2
    return result
}

// 同上面的寫罄
/*
let addClosure:(Int, Int) -> Int = {
    (number1:Int, number2:Int) -> Int in
    let result = number1 * number2
    return result
}
*/

print(addClosure(3, 5))

// Closure 可以當成 function的參數使用
let addNewClosure:(Int, Int)->Int = {
    (num1:Int, num2:Int) -> Int in
    let result = num1 * num2
    return result
}

func newCalculate(num1:Int, num2:Int, operation:(Int, Int)->Int){
    print("operation: \(operation(num1,num2))" )
}

newCalculate(num1: 6, num2: 8, operation: addNewClosure)

// Map
var numberArray = [1,3,5,7,9,2,4,6,8,10]
numberArray.map({
    (number:Int) in
    print("map number: \(number)" )
})

// numberArrayAddTen is a Int array
let numberArrayAddTen = numberArray.map({
    (number:Int) in
    return number + 10
})
print(numberArrayAddTen)

// numberArrayToString is a String array
let numberArrayToString = numberArray.map({
    (number:Int) in
    return "This is number \(number)"
})
print(numberArrayToString)

// Filter
var numberArray1 = [1,3,5,7,9,2,4,6,8,10]

let evenNumbers = numberArray1.filter({
    (number:Int) -> Bool in
    return number % 2 == 0
})
print(evenNumbers)


// Optional (非必須的) 變沒有固定型別
var no:Int? = nil           // Optional Int 型別: 只能存整數或空值，不能存其他型別
var string:String? = nil    // Optional String 型別: 只能存字串或空值，不能存其他型別
var isHello:Bool? = nil     // Optional Bool 型別: 只能存布林值或空值，不能存其他型別

// 處理Optional變數

// 方法1 ((不建這樣使用)): Force Unwrapping (強迫解開包裝) 確定no一定有值時
var noTest:Int? = 1
noTest!+2

// 方法2: 判斷是不是nil
if noTest != nil {
    noTest = noTest!+2
}
//print(noTest) // 會印出 Optional(3)

// 方法3 (最好處理方式): Optional Binding

if let myNumber = noTest {
    myNumber + 1
}
