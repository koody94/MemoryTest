//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//let maxSpeed :Float //= 200
////var currentSpeed = 110
//
//var 이름="철수"
//
////print(maxSpeed);
////print("currentSpeed = \(maxSpeed)");
////print("currentSpeed = \(이름)");
//
//func funcName(iVal:Int, yVal:Int) -> Int {
//    print("Hello World.");
//    var i:Int = 20
//    
//    func newFunc(){
//        
//    }
//    return 1
//}
//
//funcName(1,yVal: 2)
//
//class myClass : NSObject {
//    class newClass{
//        
//    }
//}
//
//struct myStruct {
//    
//}
//
//let url="www.codershigh.com"
//let hasProtocol = url.hasPrefix("http://")
//let hasCom = url.hasSuffix(".com")
//
//class Test{
//    
//}
//
//Test()
//
//var currentSpeed:Int = 110
//currentSpeed += 10
//currentSpeed += Int(20.5)
//
//let pi = 3.14
//let halfOi = 3.14 / 2
//let divider = 2
////let halfPi2 = 3.14 / divider
//
//let halfPi2 = 3.14 / Float(divider)
//let halfPi3 = 3.14 / Double(divider)
//
//let testPi = 3.14
//
//let intMax = Int.max
//let uIntMax = UInt.max
//let intMin = Int.min
//let UintMin = UInt.min
//
//let time1 = (9, 0, 48)
//time1.0
//time1.1
//time1.2
//
//let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
//time2.h
//
//let duration = (time1, time2)
//
//let (start, end) = duration
//
//let endHour = end.h
//
//
//typealias Time = (h:Int, m:Int, s:Int)
//typealias Duration = (start:Time, end:Time)
//
//
//let today:Duration = ((9,10,23), (17,8,21))
//print("We studied until ")
//
//
//
//var meetingRooms:Array<String> = ["Banksy", "Rivera", "Kahlo","Picasso",
//                                "Cezanne", "Matisse"]
//var group:[Int] = [10, 8, 14, 9]
//
//meetingRooms += ["Renoir"];
//meetingRooms.insert("Test", atIndex: 3)
//meetingRooms.count
//
//var testArray = ["Test", "Test2"]
//
//var speedHistory:[Int] = []
//speedHistory += [currentSpeed]
//
//let gpsSpeed0901 = 114.1
//
//speedHistory.append(Int(gpsSpeed0901))
//
//speedHistory[0]
//
//speedHistory.last
//
//var roomCapacity:[String:Int] = ["Banksy": 4, "Rivera":8, "Kahlo":8, "Picasso":10,
//                                 "Cezanne":20, "Matisse":30]
//
////roomCapacity += ["Renoir": 40]
//roomCapacity["Renoir"] = 40
//roomCapacity["Kahlo"]
//
//let roomNames = [String](roomCapacity.keys)
//let capacities = [Int](roomCapacity.values)
//
//let subway2 : Set = ["시청","을지로입구", "을지로3가", "을지로4가","동대문역사문화공원",
//                     "신당","상왕십리","왕십리", "한양대", "뚝섬", "성수","건대입구",
//                     "구의","강변","잠실나루","잠실","신천","종합운동장","삼성",
//                     "선릉","역삼","강남","교대","서초","방배","사당","낙성대","서울대입구",
//                     "봉천","신림","신대방","구로디지털단지","대림","신도림","문래","영등포구청",
//                     "당산","합정","홍대입구","신촌","이대","아현","충정로"]
//subway2.count
//
//let subway3 : Set = ["지축","구파발","연신내","불광","녹변","홍제"]
//
//let cheetah:Int = 0
//let robotCheetah: Int? = nil
//
//print("I have \(cheetah) cheetah in my house");
//
//if (robotCheetah != nil) {
//    print("I have \(robotCheetah) robot cheetah in my house")
//}
//
//
//var title:String = "Storyboard Prototyping"
//var ratings : [Int]? = nil
//var supportURL : String? = nil
////print("\(title) has \(ratings!.count) ratings. \r\nsupport web page: \ (supportURL!) ")
//
//
//supportURL = "www.codershigh.com"
//var bookDescription:String = "\(title)"
//
//if ratings != nil {
//    bookDescription += "has \(ratings!.count) ratings"
//}
//
//if supportURL != nil {
//    bookDescription += "\n\nsupport web page: \(supportURL!)"
//}
//
//print("\(bookDescription)")
//
//if let theRatings = ratings {
//    bookDescription += "has \(theRatings.count) ratings"
//}
//
//if let theURL = supportURL {
//    bookDescription += "\r \nsupport web page: \(theURL)"
//}
//
//var supportingURL:String! = nil
//supportURL = "www.codershigh.com"
//bookDescription += "\r\nsupport web page: \(supportingURL)"
//
//
////매개변수와 반환값이 없는 함수
//func sayHello(){
//    print("Hello")
//}
//
////매개 변수 없고, 반환값 있는 함수
//func sayHeool() -> String{
//    let returnValue = "Hello"
//    return returnValue
//}
//
//func sayHelloWithName(name:String){
//    print("\(name) Hello")
//}

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double){
    var sum = 0.0, min = history[0], max = history[1]
    
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
}

let ratings:[Double]? = [4.5, 3.0, 5.0, 2.5]

var bootDescritption = "Title"

if let theRatings = ratings {
    let record = ratingRecord(theRatings)
    bootDescritption += "has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}

func basicFunc1(a:Int, b:Int = 22){
    print("a: \(a), b: \(b)")
}
basicFunc1(1)

func basicFunc2(a:Int=11, b:Int = 22){
    print("a: \(a), b: \(b)")
}
basicFunc2()

func multiFunc1(items:String...){
    for item in items{
        print(items)
    }
}

multiFunc1("one","two","three","four")

func multiFunc2(items:String..., itemCnt:Int){
    for item in items{
        print(items)
    }
}

multiFunc2("1","2","3",itemCnt: 3)

func multiFunc3(itemCnt:Int, items:String...){
    for item in items{
        print(items)
    }
}

multiFunc3(3, items: "one","two","three")


func inoutFunc1(inout v:Int){
    v = v + 12
}

var intVal:Int = 12
inoutFunc1(&intVal)
print(">> \(intVal)")

func inoutFunc2(inout v:String){
    v += " Engine"
}

var strVal:String = "Super"
inoutFunc2(&strVal)
print(">> \(strVal)")

func firstMethod(xVal:Int){
    let yVal = 10
    func secondMethod(){
        print("xVal = \(xVal)")
        print("Second Method")
    }
    secondMethod()
}

firstMethod(1)

//함수를 파라미터로 받겠다.....
func doFunc1(f:Int->Int){
    let result = f(1)
    print("doFunc1: \(result)")
}

func doFunc2(f:()->Int){
    let result = f()
    print("doFunc1: \(result)")
}

func paraTestFunc(v:Int)->Int{
    return v * v
}

doFunc1(paraTestFunc)

//익명 함수 1
doFunc1(
    {
        (i:Int)->Int in
        return i + i
    }
)
//익명 함수 2 (리턴타입은 생략 가능)
doFunc1(
    {
        (i:Int) in
        return i + i
    }
)

//익명 함수 3 (파라미터 타입 생략 가능)
doFunc1(
    {
        (i) in
        return i + i
    }
)

doFunc1(
    {
        i in
        return i + i
    }
)

// 파라미터 생략 가능, 하나의 리턴문으로 구성될 경우
// 생략된 파라미터는 $0, $1로 접근 가능

//doFunc1()({
//        $0 + $1
//})


//doFunc2({
//    20
//})
//
//func makeFunk()->()->(){
//    let str = "Test"
//    func displayStr(){
//        print(str)
//    }
//    return displayStr
//}
//
//let myFunc = makeFunk()
//myFunc()
//
//func myAdder(x:Int)->(Int)->(Int){
//    return {
//        (y:Int) in
//        return x + y
//    }
//}
//
//let result = myAdder(5)
//let finalResult = result(2)
//
//struct Task{
//    var title:String?
//    var time:Int?
//}
//
//var callTask = Task(title: "Call to Randy", time: 10*60)
//var reportTask = Task()
//reportTask.title = "Report to Boss"
//
//var todayTask:[Task] = []
//todayTask += [callTask, reportTask]
//
//todayTask[1].time = 15 * 60
//callTask.title = "Call to Toby"
//
//print("today task = \(todayTask) \r\n callTask = \(callTask)")

class Employee{
    var name:String?
    var phoneNumber:String?
    var boss: Employee?
    
    init(){
        name = "test"
        phoneNumber="010-0000-0000"
    }
    
    init(newName:String){
        name = newName
    }
    
    func testTest()  {
        print("Test")
    }
}

struct Task{
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    var type:TaskType
    
    enum TaskType{
            case Call
            case Report
            case Meet
            case Support
        
        var typeTitle:String{
            get{
                let titleString:String
                switch self{
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "011-5678-1234"

let toby:Employee = Employee()
toby.name = "Toby"
toby.phoneNumber = "011-5678-1234"

var callTask = Task(title: "Call to Toby", time: 10*60, owner:me, participant:toby, type:.Call)
var reportTask = Task(title: "Report to Boss", time: nil, owner:me, participant:nil, type:Task.TaskType.Report)

callTask.participant?.phoneNumber = "010-5678-1234"












