//: Playground - noun: a place where people can play

import UIKit

//==================================================

var variable1: Int

//var i = variable1! => Error: can not force unwrap a non-optional
//print(variable1) => Error: variable1 not initialized

variable1 = 10
var i = variable1
print(variable1)
print(i)

//==================================================

var variable2: Int?

var j = variable2
//print(variable2) => Warning on cast
//print(j) => Warning on cast

variable2 = 20
if let k = variable2 {
    print(k)
}

//==================================================

var variable3: Int!

var l = variable3
//print(variable3) => ERROR : Bad instruction

variable3 = 30
print(variable3)

//==================================================

class House{
    var numberOfRoom = 4
}

class Person {
    var house: House?
}

var person = Person()
person.house = House()
if let nbRoom = person.house?.numberOfRoom{
    print("\(nbRoom) Rooms")
}else{
    print("No room")
}

//==================================================

