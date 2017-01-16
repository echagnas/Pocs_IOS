//: Playground - noun: a place where people can play

import UIKit

enum Number: Int{
    case oane, tou, tri, fore
}

var num: Number
num = Number.oane

print(num)

var trii = Number(rawValue: 3)
if let result = trii {
    print(result)
}


