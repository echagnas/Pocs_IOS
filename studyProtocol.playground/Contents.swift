//: Playground - noun: a place where people can play

import UIKit

protocol Listener {
    func onClick(_ num: Int)
}

class MyListener: Listener{
    internal func onClick(_ num: Int) {
        print("onClick")
    }
}

var myListener = MyListener()
myListener.onClick(8)
