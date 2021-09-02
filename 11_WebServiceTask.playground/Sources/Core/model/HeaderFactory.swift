import Foundation

public class HeaderFactory {
    func create(clientInfo: ClientInfo) -> [String:String] {
        return create(clientInfo:clientInfo, contentType: ContentType.JSON);
    }
    
    func create(clientInfo: ClientInfo , contentType: ContentType ) -> [String:String] {
        var headerValues: [String: String] = [String: String]()
        
        headerValues["Accept"] = "application/json";
        headerValues["Accept-Charset"] = "utf-8";
        headerValues["Content-type"] = convertContentTypeString(contentType: contentType);

        return headerValues
    }
    
    func convertContentTypeString(contentType: ContentType) -> String {
        switch (contentType) {
        case .JSON:
            return "application/json";
            
        case .URL_ENCODED:
            return "application/x-www-form-urlencoded";
            
        case .IMAGE, .DATA:
            return ""
        }
        
    }
}
