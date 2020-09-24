// Enum = Enumeration
import UIKit
enum Direction {
    case east
    case west
    case south
    case north
}

let myDirection:Direction = Direction.east
print(myDirection)


func getDirection (direction: Direction) {
 
    switch direction {
    case Direction.east:
        print("go east")
     
    case Direction.west:
        print("go west")
        
    case .south:
        print("got south")
        
    case .north:
        print("got North")
        
    default:
        print("None")
    }
}

getDirection(direction: .east)
