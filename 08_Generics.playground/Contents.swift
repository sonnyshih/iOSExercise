
/* ##### Generics Function (一般) ##### */
let testString: String = "Hello World"
say(word: testString);

let testNumber: Int = 168
say(word: testNumber);

func say<T> (word: T) {
    let newWord =  word
    
    print("Say \(newWord)")
}

/* ##### Generics Function (使用 Equatable) ##### */
let myFriends:[String] = ["John", "Dave", "Jim"]
let isOneOfMyFriends = exists(item: "Dave", inArray: myFriends)
print("Is One of My Friends: \(isOneOfMyFriends)")

let myNumbers:[Int] = [1,2,3,4,5,6]
let isOneOfMyNumbers = exists(item: 3, inArray: myNumbers)
print("Is One of My Numbers: \(isOneOfMyNumbers)")

let isOneOfMyNumbers1 = exists(item: 0, inArray: myNumbers)
print("Is One of My Numbers: \(isOneOfMyNumbers1)")

let myNumbersFloat:[Float] = [1.0,2.0,3.0,4.0,5.0,6.0,]
let isOneOfMyFloatNumbers = exists(item: 3.0000, inArray: myNumbersFloat)
print("Is One of My Float Numbers: \(isOneOfMyFloatNumbers)")

/* <T: Equatable> 表示 「型別限制」
 「符合 Equatable 協定的型別都可以使用等於運算符 (==) 來比較是否相等，或是使用不等於運算符 (!=)比較是否不相等。」所有 Swift 型別。
  如 String、Integer、Float、和 Double 都遵循 Equatable 協定
 */

func exists<T: Equatable>(item:T, inArray:[T]) -> Bool
{
    var index:Int = 0
    var found = false
    
    while (index < inArray.count && found == false)
    {
        if item == inArray[index]
        {
            found = true
        }
        else
        {
            index = index + 1
        }
    }
    
    if found
    {
        return true
    }
    else
    {
        return false
    }
}

/* ##### Generics Class ##### */
var testClassString = TestClass<String, Int>()
testClassString.setName(name: "Hello World")
print("Test Class String: \(testClassString.getName())")

class TestClass <T, R> {
    var name: T?
    var age: R?
    
    init() {
        
    }
    
    public func setName (name: T){
        self.name = name
    }
    
    public func getName() -> T{
        return self.name!
    }
    
    public func setAge(age: R){
        self.age = age
    }
    
    public func getAge()-> R {
        return self.age!
    }
}
