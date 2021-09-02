
public struct SignInInputEntity: Encodable {
    let Email: String
    let Password: String
    
    public init(Email: String, Password: String){
        self.Email = Email
        self.Password = Password        
    }
}

