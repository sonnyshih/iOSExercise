import Foundation

public class SignInTask: MessageWebServiceTask<SignInResultEntity>{
    var inputEntity: SignInInputEntity?
    
    public init(inputEntity: SignInInputEntity) {
        
        self.inputEntity = inputEntity
        
    }
    
    override public func getMethod() -> HttpMethodType {
        return .POST
    }
    
    override public func generateServiceUrl()-> String {
        return WebServiceHostCenter.getInstance().getSignInUrl()
    }
    
    override public func generatePostBody()->Data {
        return getData(input: inputEntity)
    }
    
    override public func onTaskSucceed(entity: MessageEntity<SignInResultEntity>) {
        print(entity.Result.Guid)
        print(entity.Result.Email)
        print(entity.Result.CompanyName)
    }
    
    override public func onTaskFailed(errorType: ErrorType) {
        
    }
    
}
