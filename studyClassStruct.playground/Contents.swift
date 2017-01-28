//: Playground - noun: a place where people can play

import UIKit


class MyClass{
    
    var name: String = ""
    var description : String{
        return "description"
    }
    
    required init(_ name: String){
        self.name = name
    }
    
    convenience init(){
        self.init("test")
    }
    
    deinit {
        // deinitialisation
    }
    
    func foo(){
        print("My class: name = \(self.name)")
    }
    final func foo2(){
        //Can not be override
    }
    
    func foo3(param param1: String, param2: String){
        
    }
}

class MySuperClass : MyClass{
    
    required init(_ name: String){
        super.init(name)
    }
    
    override func foo() {
        super.foo()
        print("My super class = \(self.name)")
    }
    
    override var description: String{
        return "new description"
    }
    
    //override func foo2(){
        //Bey non, on peut pas overrider un final :)
    //}
}

var mySuperClass = MySuperClass("mysuperclass")
mySuperClass.foo()


struct MyStruct{
    
    var name: String
    
    init(_ name: String){
        self.name = name
    }
    
    init(){
        self.name = "default"
    }

    func foo(){
        print("My struct: name = \(self.name)")

    }
}

var myClass = MyClass("manu")
myClass.foo()
myClass.foo3(param: "a", param2: "b")

var myStruct = MyStruct("manou")
myStruct.foo()

var myStructBis = MyStruct()
myStructBis.foo()

//Inherit class
class MyClass2: MyClass{
    
}

//No inheritance for struct

MyClass2("toto").foo()

struct MyStruct2{
    static var var1 = "tutu"
    
    var name: String {
        willSet(name){
            print("before")
        }
        didSet{
            print("after")
        }
    }
    
    mutating func setName(str: String){
        name = str;
    }
    
    static func foo(){
        print(var1)
    }
}

var myStruct2 = MyStruct2(name: "test")
myStruct2.name = "toto"
print(myStruct2.name)

MyStruct2.foo()


