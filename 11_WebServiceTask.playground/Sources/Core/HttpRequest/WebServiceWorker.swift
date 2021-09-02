import Foundation

public class WebServiceWorker<R: Decodable> {
    
    var task: WebServiceTask<R>?
    
    init(task: WebServiceTask<R>) {
        self.task = task
    }
    
    public func startTask(){
        print("start Task")
        switch task!.getMethod() {
        case .GET:
            startHttpGetRequest()

        case .POST:
            startHttpPostRequest()

        default:
            break

        }

    }
    
//    func startTask(task: WebServiceTask<R>, tag: AnyObject){
//        
//        switch task.getMethod() {
//        case .GET:
//            startHttpGetRequest()
//
//        case .POST:
//            startHttpPostRequest()
//        
//        default:
//            break
//            
//        }
//        
//    }

    
    public func startHttpGetRequest(){
        
    }
    
    public func startHttpPostRequest(){
        
    }
    
    public func notifyWorkSucceed(result: R){
        task!.onTaskSucceed(entity: result);
    }
    
    public func notifyWorkFailed(errorType: ErrorType){
        task!.onTaskFailed(errorType: errorType)
    }
    
}
