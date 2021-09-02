import UIKit

var greeting = "Hello, playground"

print ("aaa11="+WebServiceHostCenter.getInstance().getSignInUrl())


let inputEntity = SignInInputEntity(Email: "hello@gmail.com", Password: "hello123")

var task = SignInTask(inputEntity: inputEntity)
WebServiceTaskManager.startTask(task: task, tag: "test")


