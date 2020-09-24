// Object-Oriented Programming (OOP) 物件導向

class Lego {
    var color:String = "blue"
    var size:Int = 8
    
    func connection() {
        print("Connect with another block")
    }
    
    func remove() {
        print("Disconnect with another block")
    }
}

let lego = Lego()
lego.color = "red"
print(lego.color)

lego.connection()
lego.remove()

class Baby {
    var name:String
    var age:Int
    
    init() {    // 物件初始化
        name = "Tome"
        age = 1
        print("A new baby is born!")
    }
    
    init(name:String) {
        self.name = name
        age = 1
    }
    
    func sleep() {
        print("Sleep")
    }
    
    func introduceSelf() {
        print("My name is \(name)")
    }
}

var baby = Baby()
print(baby.name)
baby.sleep()
baby.introduceSelf()

var baby1 = Baby(name: "Hellan")
baby1.introduceSelf()


class CuteBaby: Baby {
    var nickName: String = "QQ"
    func danceAndSing() {
        print("dance and sing")
    }
    
    override func sleep() {
        super.sleep()   //執行父類別的sleep function
        print("Sleep with cute smile")
    }
    
}

let iAmCuteBaby = CuteBaby()
print(iAmCuteBaby.nickName)
iAmCuteBaby.danceAndSing()
iAmCuteBaby.sleep()
