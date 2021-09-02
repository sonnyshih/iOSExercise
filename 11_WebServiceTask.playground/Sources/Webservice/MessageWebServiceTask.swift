import Foundation

public class MessageWebServiceTask<R:Decodable> : WebServiceTask<MessageEntity<R>> {
    let MESSAGE_SUCCESS:Int = 0
    let MESSAGE_FAIL:Int = -1
    
    func getMessageEntityState(entity: MessageEntity<R>)-> MessageEntityState{
        if (entity.Code == MESSAGE_FAIL) {
            return .FAIL;

        } else if (entity.Code == MESSAGE_SUCCESS) {
            return .SUCCESS;

        }

        return .SERVER_ERROR;
    }
    
    override public func onTaskSucceed(entity: MessageEntity<R>){
        onTaskSucceed(state: getMessageEntityState(entity: entity), result: entity.Result, message: entity.Message);
    }
    
    public func onTaskSucceed(state:MessageEntityState, result: R, message: String) {
        
    }
}

public enum MessageEntityState {
     case SERVER_ERROR
     case SUCCESS
     case FAIL
}
