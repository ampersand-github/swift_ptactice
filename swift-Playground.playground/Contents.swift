import UIKit

var str = "Hello, playground"
var a:Int
let b:Int
a = 1
let c:Int = 4
type(of:a)

let none = Optional<Int>.none
print(".none: \(String(describing: none))")
let some = Optional<Int>.some(1)
print(".some:\(String(describing: some))")

var e:Int?
e = nil
e = Optional(1)
e = 1

let range = 1..<4
for value in range{
    print(value)
}

let range2 = 1...4
for value in range2{
    print(value)
}
range.lowerBound
range.upperBound
range.contains(3)

let array = [1,2,3,4,5]
var enumerated = [] as [Int]
array.forEach(
    {element in enumerated.append(element)}
)
enumerated

let filterd = array.filter({element in element % 2 == 0})
filterd

let doubled = array.map({element in element*3})
doubled

let f = array.flatMap({value in [value,value + 1]})
f

let strings = ["abc","123","def","456"]
let integers = strings.compactMap({value in Int(value)})
integers

var g = 1
repeat {
    print(g)
    g += 1
} while g<1

var count = 0
func someFunction() -> Int{
    defer {
        count+=1
    }
    return count
}
someFunction()
count

if case 1...10 = g {
    print("含まれる")
}

func someFunction2(value _value:Int) {
    guard case 1...10 = _value else {
        print("guard")
        return
    }
    print("1以上10以下の値です。")
    
}

someFunction2(value:3)
someFunction2(value:11)

func double(_ x:Int) -> Int {
    return x*2
}
double(2)
double(4)

func double2(num x:Int) -> Int {
    return x*3
}
double2(num:2)
double2(num:4)

func greet(user : inout String) {
    if user.isEmpty {
        user = "annoymous"
    }
    print("hello user")
}
var user:String=""
greet(user:&user)
//var user3:String="tom"
//greet(user:user3)

func greet3(user:String) -> Void {
    print("hello ")
    print(user)
}
greet3(user:"aaa")

let double3 = {(x:Int) -> Int in
    return x*2
}
double3(3)

let closure:(Int)-> Int
func someFunction3(x:(Int) -> Int){}
