import Foundation

public class WebServiceTaskManager {
    
    
    public static func startTask<R>(task: WebServiceTask<R>, tag: String){
        let worker = DispatchQueueWorker<R> (task: task)
        worker.startTask()
        
    }
}
