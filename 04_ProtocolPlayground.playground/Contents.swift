/* ###### Exapmple 1 Start ##### */
protocol SoyMilkGetable {
    func giveMeSoyMilk()
}


class Brunch: SoyMilkGetable {
    func giveMeSoyMilk() {
        print("Soy Milk")
    }
    
}

let brunch = Brunch()
brunch.giveMeSoyMilk()


protocol MoneyTransferProtocol {
    func giveMoney()
}

class RichPeople: MoneyTransferProtocol {
    func giveMoney() {
        print("Give you 100 dollars")
    }
    
}

class PoorGuy {
    var helper:MoneyTransferProtocol?
    func needMoney() {
        helper?.giveMoney()
    }
}

let poorGuy = PoorGuy()
let richPeople = RichPeople()
poorGuy.helper = richPeople
poorGuy.needMoney()
/* ###### Exapmple 1 End ##### */

/* ###### Exapmple 2 Start ##### */
protocol PickerViewDataSource {
    func howManyComponent()
    func howManyRow()
}

protocol PickerViewDelegate {
    func titleToShow()
    func didSelect()
}

class ViewController:PickerViewDataSource, PickerViewDelegate {
     
    func howManyComponent() {
        print("2")
    }
 
    func howManyRow() {
         print("10")
     }

    func titleToShow() {
        print("Hello")
    }
    
    func didSelect() {
        print("select")
    }
}

class PickerView {
    var dataSource:PickerViewDataSource?
    var delegat: PickerViewDelegate?
    
    func howManyComponentIHave () {
        dataSource?.howManyComponent()
    }
    
    func howManyRow(){
        dataSource?.howManyRow()
    }
    
    func whatToShow(){
        delegat?.titleToShow()
    }
    
    func afterSelect(){
        delegat?.didSelect()
    }
}

let pickerView = PickerView()
let viewController = ViewController()
pickerView.dataSource = viewController;
pickerView.delegat = viewController;

pickerView.howManyComponentIHave()
pickerView.howManyRow()
pickerView.whatToShow()
pickerView.afterSelect()

/* ###### Exapmple 2 End ##### */


/* ###### Exapmple 3 Start ##### */
protocol ManKindType {
    var health:Int { get set}
}

protocol Attackable {
    func attack()
}

protocol Hurtable:ManKindType {
    func getHurt()
}

class Man:ManKindType, Hurtable {
    var health: Int
    
    init() {
        health = 10
    }
    
    func getHurt() {
        health -= 10
    }
}

class Batman:ManKindType, Attackable, Hurtable {
    var health: Int
    init(){
        health = 1000
    }
    
    func getHurt() {
        health -= 5
    }
    
    func attack(){
        print("attack with fist")
    }
    
}

class Superman:ManKindType, Attackable, Hurtable {
    var health: Int
    init(){
        health = 10000
    }
    
    func getHurt() {
        health -= 1
    }
    
    func attack(){
        print("attack with eye lasser")
    }
}

/* ###### Exapmple 3 End ##### */
