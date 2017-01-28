//: Playground - noun: a place where people can play

import UIKit


//==================================================

class Room{
    var owner: String?
    
    init(owner: String){
        self.owner = owner
    }
}

class Residence{
    var rooms = [Room]()
    
    init(rooms: [Room]){
        self.rooms = rooms
    }
    
    subscript(i: Int) -> Room{
        get{
            return self.rooms[i]
        }
    }
}

//==================================================

//Tableau de room
var rooms = [Room]()
rooms.append(Room(owner: "Robert"))
rooms.append(Room(owner: "Georges"))
print("The residence has \(rooms.count) rooms:")

//Set rooms in residence
var residence = Residence(rooms: rooms)

//Print owner of each room
for index in 0...residence.rooms.count-1{
    if let owner = residence[index].owner{
        print("One for \(owner)")
    }
}

//==================================================