/*
 Study regarding weaks references.
 Used to resolve the problem of 'strong references cycle'
 */

import UIKit

//==================================

class House{
    var owner: Person
    
    init(_ owner: Person){
        self.owner = owner
        print("Init House")
    }
    
    deinit {
        print("Deinit House")
    }
}

class Person{
    weak var house: House?
    
    init(){
        print("Init Person")
    }
    
    deinit {
        print("Deinit Person")
    }
}

//==================================

var person: Person!
var house: House?

person = Person()
house = House(person)
if let pers = person{
    pers.house = house
}

person = nil
house = nil

//==================================

