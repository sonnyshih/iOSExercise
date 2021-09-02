import Foundation

public class WebServiceTask<R: Decodable> {

    func createClientInfo() -> ClientInfo {
        let clientInfo: ClientInfo = ClientInfo()
        
        clientInfo.httpMethodType = getMethod()!;
        
        return clientInfo
    }
    
    public func getMethod() -> HttpMethodType? {
        return nil
    }
    
    public func generateServiceUrl()-> String {
        return ""
    }
 
    public func generatePostBody() -> Data? {
        return nil
    }
    
    public func generateHttpHeaders() -> [String:String] {
        let headerFactory: HeaderFactory = HeaderFactory()
        return headerFactory.create(clientInfo:createClientInfo());
    }
    
    public func onTaskSucceed(entity: R) {
        
    }
    
    public func onTaskFailed(errorType: ErrorType) {
        
    }
    
    
    public func getData<R: Encodable> (input: R) -> Data {
        let encoder = JSONEncoder()
        let data = try? encoder.encode(input)
        
        return data!
    }
}

public enum HttpMethodType {
    case GET
    case POST
    case PATCH
    case PUT
    case DELETE
}
