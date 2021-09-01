import Foundation

// getDemo()

postDemo()

/* ##### API: Get Demo ###### */
func getDemo(){
    let address = "https://reqres.in/api/users?page=1"
    
    if let url = URL(string: address) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Set Heaeder
        //request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else if let response = response as? HTTPURLResponse, let data = data {
                
                // 取得Header裡的 Content-Type 欄位資料
                let contentType = response.value(forHTTPHeaderField: "Content-Type")
                print("rcontentType = \(contentType!)")
                
                // 取得Header裡的 Via 欄位資料
                let via = response.value(forHTTPHeaderField: "Via")
                print("via = \(via!)")
                
                // Status Code
                print("Status code: \(response.statusCode)")
                
                // 取得回傳資料
                let content = String(data: data, encoding: .utf8)
                print(content!)
                
                // Handle the json string
                do {
                    let decoder = JSONDecoder()
                    let getResponse = try decoder.decode(GetResponse.self, from: data)
                    print("page = \(getResponse.page)")
                    print("per_page = \(getResponse.per_page)")
                    print("total = \(getResponse.total)")
                    print("total_pages = \(getResponse.total_pages)")
                    
                    // Get the first data
                    print("Data count = \(getResponse.data.count)")
                    print("Data_1 First Name = \(getResponse.data[0].first_name)")
                    print("Data_1 Email = \(getResponse.data[0].email)")
                    
                    // Get Support data
                    print("Support url = \(getResponse.support.url)")
                    print("Support text = \(getResponse.support.text)")

                } catch  {
                    print(error)
                }
                
            }
        }.resume()
        
    } else {
        print("網址錯誤")
    }

}

struct GetResponse: Decodable {
    let page: Int
    let per_page: Int
    let total: Int
    let total_pages: Int
    let data: [DataEntity]
    let support: SupportEntity
}

struct DataEntity: Decodable{
    let id: Int
    let email: String
    let first_name: String
    let last_name: String
    let avatar: String
}

struct SupportEntity: Decodable{
    let url: String
    let text: String
}

/* ##### API: Post Demo ###### */
func postDemo(){
    let address = "https://reqres.in/api/users"
    
    if let url = URL(string: address) {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        // Set Heaeder
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        // Set post body
        let encoder = JSONEncoder()
        let user = CreateUserBody(name: "Peter", job: "情歌王子")
        let data = try? encoder.encode(user)
        request.httpBody = data
        
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else if let response = response as? HTTPURLResponse, let data = data {
                
                // 取得Header裡的 Content-Type 欄位資料
                let contentType = response.value(forHTTPHeaderField: "Content-Type")
                print("rcontentType = \(contentType!)")
                
                // 取得Header裡的 Via 欄位資料
                let via = response.value(forHTTPHeaderField: "Via")
                print("via = \(via!)")
                
                // Status Code
                print("Status code: \(response.statusCode)")
                
                // 取得回傳資料
                print("### Get response String ###")
                let content = String(data: data, encoding: .utf8)
                print(content!)
                
                // Handle the json string
                print("### Handle JSON String ###")
                do {
                    let decoder = JSONDecoder()
                    let createUserResponse = try decoder.decode(CreateUserResponse.self, from: data)
                    print("ID: \(createUserResponse.id)")
                    print("Name: \(createUserResponse.name)")
                    print("Job: \(createUserResponse.job)")
                    print("createAt: \(createUserResponse.createdAt)")
                } catch  {
                    print(error)
                }
                
            }
            
        }.resume()
        
    } else {
        print("網址錯誤")
    }
}

struct CreateUserBody: Encodable {
    let name: String
    let job: String
}
struct CreateUserResponse: Decodable {
    let name: String
    let job: String
    let id: String
    let createdAt: String
}
