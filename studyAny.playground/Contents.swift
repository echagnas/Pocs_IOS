//: Playground - noun: a place where people can play

import UIKit

var things = [Any]()
things.append(0)
things.append("ceci est une string")
things.append(0.0)

for thing in things{
    switch thing{
    case let int as Int:
        print("'\(int)' est un entier")
    case let string as String:
        print("'\(string)' est une string")
    default:
        print("objet non pris en charge")
    }
}
