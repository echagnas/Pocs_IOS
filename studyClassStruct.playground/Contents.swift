//: Playground - noun: a place where people can play

import UIKit


class MyClass{
    
    var name: String = ""
    
    init(_ name: String){
        self.name = name
    }
    
    func foo(){
        print("My class: name = \(self.name)")
    }
}


struct MyStruct{
    
    var name: String
    
    init(_ name: String){
        self.name = name
    }

    func foo(){
        print("My struct: name = \(self.name)")

    }
}

var myClass = MyClass("manu")
myClass.foo()

var myStruct = MyStruct("manou")
myStruct.foo()

//Inherit class
class MyClass2: MyClass{
    
}

//No inheritance for struct

MyClass2("toto").foo()

struct MyStruct2{
    var name: String {
    
    willSet(name){
        print("before")
    }
    didSet{
        print("after")
    }
    }
}

var myStruct2 = MyStruct2(name: "test")
myStruct2.name = "toto"
print(myStruct2.name)

