import Foundation

public struct MessageEntity<T:Decodable> : Decodable {
    var Code: Int
    var Message: String
    var Result: T
    
    enum CodingKeys: String, CodingKey { // Our Saviour
        case Code
        case Message
        case Result
    }
    
    // The Initializer function from Decodable
    public init(from decoder: Decoder) throws {
        // 1 - Container
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        // 2 - Normal Decoding
        Code = try values.decode(Int.self, forKey: .Code)
        Result = try values.decode(T.self, forKey: .Result)
        
        
        // 3 - Conditional Decoding
        if let Message =  try values.decodeIfPresent(String.self, forKey: .Message) {
            self.Message = Message
        }else {
            self.Message = ""
        }
    }
}
