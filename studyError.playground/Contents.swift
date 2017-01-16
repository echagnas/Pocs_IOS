//: Playground - noun: a place where people can play

import UIKit

enum MyError: Error{
    case Error1
    case Error2
}

func throwError() throws {
    throw MyError.Error2
}

do{
    try throwError()
}catch(MyError.Error1){
    print("error 1")
}catch(MyError.Error2){
    print("error 2")
}
