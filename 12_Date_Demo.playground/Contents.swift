import UIKit
// 參考: https://www.zerotoappstore.com/get-year-month-day-from-date-swift.html

getDateToString()
//getYearMonthDayTime()
//getNowTime()

func getDateToString() {
    let date = Date()
    let dateFormatter = DateFormatter()
//        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tehran")
//        dateFormatter.locale = Locale(identifier: "fa-IR")
//        dateFormatter.calendar = Calendar(identifier: .gregorian)
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss:SSS"
    let dateString = dateFormatter.string(from: date)
    print(dateString)
}

func getYearMonthDayTime(){
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss:SSS"

    let date = Date()
    let dateString = dateFormatter.string(from: date)
    print (dateString)
    
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second, .nanosecond, .weekday], from: date)
    let year = components.year
    let month = components.month
    let day = components.day
    let hour = components.hour
    let min = components.minute
    let sec = components.second
    let dayOfWeek = components.weekday
    
    print("year: " + String(year!) )
    print("month: " + String(month!) )
    print("day: " + String(day!) )
    print("hour: " + String(hour!) )
    print("min: " + String(min!) )
    print("sec: " + String(sec!) )
    print("dayOfWeek: " + String(dayOfWeek!) )  // 1 representing Sunday and 7 representing Saturday
}


func getNowTime(){
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss:SSS"

    let datetime = Date()
    let dateString = dateFormatter.string(from: datetime)
    print (dateString)

}

// 要在 swift app 開發中才能使用
func toDate() -> Date {
    let dateString = "2021-09-11 10:49:06:997"
    let dateFormatter = DateFormatter()
//        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tehran")
//        dateFormatter.locale = Locale(identifier: "fa-IR")
//        dateFormatter.calendar = Calendar(identifier: .gregorian)
    dateFormatter.dateFormat = "yyyy-MM-dd"
    
    return dateFormatter.date(from: dateString)!
    
}

func isValidDate(_ value: String) -> Bool{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    if dateFormatter.date(from: value) != nil {
        return true
    }
    
    return false
}
