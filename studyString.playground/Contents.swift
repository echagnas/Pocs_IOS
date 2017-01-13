
//============================
//TEST OF STRINGS MANIPULATION
//============================

import UIKit

//ORIGINAL STRING
var str:String = "\u{1F1FA}\u{1F1F8}"

//SHOW STRING
print("String contains: \(str)")

//STRING SIZE
print("String size: \(str.characters.count)")

//INSERT CHARACTER BEFORE
str.insert("\u{D55C}", at: str.startIndex)
print("Insert character before: \(str)")

//INSERT CHARACTER AFTER
str.insert("\u{E9}\u{20DD}", at: str.endIndex)
print("Insert character after: \(str)")

//INSERT STRING BEFORE
str.insert(contentsOf: "test".characters, at: str.startIndex)
print("Insert string before: \(str)")

//INSERT STRING AFTER
str.insert(contentsOf: "test".characters, at: str.endIndex)
print("Insert string after: \(str)")

//SEARCH POSITION OF FIRST CHARACTER 's'
var pos = str.characters.distance(from: str.startIndex, to: str.characters.index(of: "s")!)
print("Position of first 's': \(pos)")

//SEARCH POSITION OF LAST CHARACTER 's'
//TODO

//TEST IF THE STRING BEGIN BY "test"
//TODO
