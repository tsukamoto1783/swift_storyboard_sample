import UIKit

// var：変数、let：定数
var greeting = "Hello, playground"
let a = 123

var b = 345
b = 789


// 四則演算
let c = 4
let d = 5
print(c+d)

// nillとオプショナル型
var e: Int?
e = 5

let f: Int? = 7

print(e!+f!)

// 文字列操作
// 型が明確なら型指定は省略可
let hoge = "Hello World"

let g = "私は"
let h = "歳です"
let i = 20

print(g + "\(i)" + h)

// 配列
let j: [Int] = [1,2,3,4,5]
var k = [1,2,3,4,5]
var l = k

k.append(6)
k.remove(at: 3)
print(k)

print(l)

// イニシャライザ
class Dog {
    var name = ""
    var age = 0
    
    init(name: String = "", age: Int = 0) {
        self.name = name
        self.age = age
    }
}

let pet = Dog(name: "pochi", age: 3)

// 構造体（struct）
struct Cat {
    var name = ""
    var age = 0
}

let pet2 = Cat(name: "tama", age: 4)
pet2.name
pet2.age


// enum
enum Season {
    case Spring
    case Summer
    case Autumn
    case Winter
}

let currentSeason: Season = Season.Winter

switch currentSeason{
case .Spring:
    print("春")
case .Summer:
    print("夏")
    
case .Autumn:
    print("秋")
    
case .Winter:
    print("冬")
}

// クロージャー（無名関数）
// =================
let getAgeMessage = {(name: String, age: Int) -> String in
    let message = name + ": I'm \(age) years old."
    return message
}

//func getAgeMessage(name: String, age: Int) -> String {
//    let message = name + ": I'm \(age) years old."
//    return message
//}
// =================

func sayAge(name: String, age: Int, getMessage: (String, Int) -> String) {
    let message = getMessage(name, age)
    print(message)
}

sayAge(name: "hoge", age: 22, getMessage: getAgeMessage)

// プロトコル
protocol Dog2{
    var color: String{get set}
    func run()
}

class Poodle: Dog2 {
    var color: String = "brown"
    func run(){
        print("hoge")
    }
}

struct Chihuahua: Dog2{
    var color: String = "white"
    func run(){
        print("fuga")
    }

}

// デリゲート
protocol DogDelegate{
    func didGroundRun()
}

class Dog3{
    var delegate: DogDelegate?
    func didrun(){
        print("run")
        delegate?.didGroundRun() // delegateがnil出ない場合は実行。
    }
}

class Papillion: DogDelegate{
    func run(){
        let dog = Dog3()
        dog.delegate = self // selfにはPapillionがインスタンス化されたものが入る。
        dog.didrun()
    }
    
    func didGroundRun() {
        print("hogehoge")
    }
}

let dog = Papillion()
dog.run()
