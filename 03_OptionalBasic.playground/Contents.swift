// Optional (非必須的) 加? 才可以把變數 的值設為空值nil
var x:Int? = nil            // Optional Int, 只能存整數或是空值nil，不能存其他型別
var hello:String? = nil     // Optional String , 只能存字串或是空值nil，不能存其他型別
var isOpen:Bool? = nil      // Optional Boole , 只能存布林值或是空值nil，不能存其他型別

//處理方法1 (不建議使用) Force Unwrapping 強迫解開包裝
x = 10
print(x!) // 在x 後面加 !，代表我確定 x 一定有值

// 處理方法 2
if x != nil {
  print("\(x!+1)")
}

// 處理方法 3: Optional Binding 是最好的方法
if let myNumber = x {
    myNumber + 1
}

// Option Binding 範例
var highScore:Int
var loadedScore:Int? = 1000

if let okScore = loadedScore {
    highScore = okScore
} else {
    highScore = 0
}

print(highScore)
