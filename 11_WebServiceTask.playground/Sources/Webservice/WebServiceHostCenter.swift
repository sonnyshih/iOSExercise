import Foundation

public class WebServiceHostCenter {
    var SERVICE_HOST_WWW:String = "http://10.1.99.41:5000/api/"
    
    static var instance: WebServiceHostCenter?
    
    static public func getInstance()->WebServiceHostCenter {
        if instance == nil {
            instance = WebServiceHostCenter()
        }
        
        return instance!
    }
    
    public func getSignInUrl() -> String {
           return SERVICE_HOST_WWW + "employee/login";
    }
}
