
//函式轉Closure的步驟
// #1 刪除關鍵詞func: 刪除函式名稱
// #2 把參數跟回傳值移到大括號中
// #3 加入in

/* ##### Exp 1 Start #####*/
// function 寫法
/*
func sayHello() {
    print("Hello Everybody")
}
*/

// Closure 寫法
/*
let sayHelloClosure = {
    () in
    print("Hello Everybody")
}
*/
// Closure 設定型別寫法
let sayHelloClosure:()->() = {
    () in
    print("Hello Everybody")
}


sayHelloClosure()
/* ##### Exp 1 End #####*/


/* ##### Exp 2 Start ##### */
// function 寫法
/*
func eat(foodName:String) {
    print("I want to have \(foodName)")
}
eat(foodName: "Apple Pie")
*/

// Closure 寫法
/*
let eatClosure = {
    (foodName:String) in
    print("I want to have \(foodName)")
}
 */

// Closure 設定型別寫法
let eatClosure:(String)->() = {
    (foodName:String) in
    print("I want to have \(foodName)")
}
eatClosure("Apple Pie")

/* ##### Exp 2 End ##### */

/* ##### Exp 3 ##### */
// function 寫法
/*
func add(number1:Int, number2:Int)->Int {
    let result = number1 + number2
    return result
}
print(add(number1: 3, number2: 5))
*/

// Closure 寫法
/*
let addClosure = {
    (number1:Int, number2:Int)->Int in
    let result = number1 + number2
    return result
}
 */

// Closure 設定型別寫法
let addClosure:(Int, Int)->Int = {
    (number1:Int, number2:Int)->Int in
    let result = number1 + number2
    return result
}
print(addClosure(10, 6))

/* ##### Exp 3 End ##### */

/* ##### Exp 4 Start ##### */
// function 寫法
/*
func multply(number1:Int, number2:Int)->String {
    return "\(number1) * \(number2) = \(number1 * number2)"
}

print(multply(number1: 30, number2: 15))
*/

// Closure 寫法
/*
let multplyClosure = {
    (number1:Int, number2:Int)->String in
    return "\(number1) * \(number2) = \(number1 * number2)"
}
*/

// Closure 設定型別寫法
let multplyClosure:(Int, Int)->String = {
    (number1:Int, number2:Int)->String in
    return "\(number1) * \(number2) = \(number1 * number2)"
}

print(multplyClosure(15, 26))

/* ##### Exp 4 End ##### */


/* ##### 把 Closure當成參數使用 Start ##### */
let twoNumsAdd:(Int, Int)->String = {
    (number1:Int, number2:Int) in
    return "\(number1) + \(number2) = \(number1 + number2)"
}

func caculate(number1:Int, number2:Int, operation: (Int,Int)->String) {
    print(operation(number1, number2))
}

caculate(number1: 100, number2: 200, operation: twoNumsAdd)
/* ##### 把 Closure當成參數使用 End ##### */

/* ##### 把 Closure當成"回傳值"使用 Start ##### */
let newMultiply:(Int, Int)->String = {
    (number1: Int, number2: Int) in
    return "\(number1) * \(number2) = \(number1 * number2)"
}

// (Int, Int)->String 是代表要回傳的function 格式
func giveMeMultiplyFunc()-> (Int, Int)->String {
    return newMultiply
}

let doMultiply = giveMeMultiplyFunc()
print(doMultiply(12, 13))

/* ##### 把 Closure當成"回傳值"使用 End ##### */

/* ##### map 使用 Start ##### */
var numberArray:[Int] = [1, 3, 5, 7, 9, 2, 4, 6, 8, 10]

let numberArrayAddTen:[Int] = numberArray.map({
    (number:Int) -> Int in
    return number + 10
})

print(numberArrayAddTen)

/* ##### map 使用 End ##### */

/* ##### filter 使用 Start ##### */

var numberArray1:[Int] = [1, 3, 5, 7, 9, 2, 4, 6, 8, 10]

let evenNumbers = numberArray1.filter({
    (number: Int) -> Bool in
    return number % 2 == 0
})
print(evenNumbers)

let greaterThanFive = numberArray1.filter({
    (number: Int) -> Bool in
    return number > 5
})

print(greaterThanFive)

/* ##### filter 使用 end ##### */




