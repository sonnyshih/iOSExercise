import Foundation

public class DispatchQueueWorker<R:Decodable>: WebServiceWorker<R> {
    
    
    override public func startHttpGetRequest(){
        let concurrentQueue = DispatchQueue(label: "com.waynestalk.concurrent", attributes: .concurrent)
        
        
        concurrentQueue.async {
            print("start Http Get Request")
        }
    }
    
    override public func startHttpPostRequest(){
        let concurrentQueue = DispatchQueue(label: "com.waynestalk.concurrent", attributes: .concurrent)
        
        concurrentQueue.async {
            print("start Http Post Request")
            
            if let url = URL(string: self.task!.generateServiceUrl()) {
                var request = URLRequest(url: url)
                request.httpMethod = "POST"
                
                // Set Heaeder
                let httpHeader = self.task!.generateHttpHeaders()
                for (key, value) in httpHeader {
                    request.setValue(value, forHTTPHeaderField: key)
                }

                // Set post body
                request.httpBody = self.task!.generatePostBody()

                URLSession.shared.dataTask(with: request) { data, response, error in

                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                    } else if let response = response as? HTTPURLResponse, let data = data {

                        // Status Code
                        print("Status code: \(response.statusCode)")

                        // 取得回傳資料
//                        print("### Get response String ###")
//                        let content = String(data: data, encoding: .utf8)
//                        print(content!)

                        switch response.statusCode{
                        case 200:
                            self.sendNotifyWorkSucceed(data: data)
                        default:
                            
                            break
                        }

                    }

                }.resume()

            } else {
//              print("網址錯誤")
                self.sendNotifyWorkFailed(errorType: ErrorType.WEB_SERVER_ERROR)
            }
            
        }// async
    }
    
    func sendNotifyWorkSucceed(data: Data){
        
        // Handle the json string
        print("### Handle JSON String ###")
        do {
            let decoder = JSONDecoder()
            self.notifyWorkSucceed(result: try decoder.decode(R.self, from: data))
        } catch  {
            print(error)
        }

    }
    
    func sendNotifyWorkFailed(errorType: ErrorType){
        self.notifyWorkFailed(errorType: errorType);
    }
}
