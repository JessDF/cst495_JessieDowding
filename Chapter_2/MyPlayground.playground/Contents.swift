//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, Swift"
let constStr = str

var nextYeat: Int
var bodyTemp: Float
var hasPet: Bool
var arrayOfInts: Array<Int>
var arrayOfInts2: [Int]
var dictionaryOfCapitalsByCountry: Dictionary<String, String>
var dictionaryOfCapitalsByCountry2: [String: String]
var winningLotteryNumbers: Set<Int>

let number = 42
let fmStation = 91.1

let countingUp = ["one", "two"]
let secondElement = countingUp[1]
countingUp.count
let nameByParkingSpace = [13: "Alice", 27: "Bob"]

let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
let defaultNumber = Int()
let defaultBool = Bool()

let num = 42
let meaningOfLife = String(num)

let availableRooms = Set([205, 411, 343])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

var countingUp2 = ["one", "two"]
let secElem = countingUp2[1]
countingUp2.count
countingUp2.append("three")
countingUp2.count

var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?

var reading1: Float?
var reading2: Float?
var reading3: Float?
reading1 = 9.8
reading2 = 7.1
if let r1 = reading1, let r2 = reading2, let r3 = reading3{
    let avgReading = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading that was nil"
}

//let space13Assignee: String? = nameByParkingSpace[13]
let space42Assignee: String? = nameByParkingSpace[42]

if let space13Assignee: String? = nameByParkingSpace[13] {
    print("Key 13 is assigned in the dictionary!")
}

let range = 0..<countingUp2.count
for i in range {
    let string = countingUp2[i]
    // Use 'string'
}
for string in countingUp2{
    //Use 'string'
}
for (i, string) in countingUp2.enumerated() {
    // (0, "one"),(1, "two") ...
}

for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}

enum PieType: Int {
    case apple = 0
    case cherry = 1
    case pecan = 2
}
let favoritePie = PieType.apple
let name: String
switch favoritePie {
    case .apple:
        name = "Apple"
    case .cherry:
        name = "cherry"
    case .pecan:
        name = "Pecan"
}

let pieRawValue = PieType.pecan.rawValue

if let pieType = PieType(rawValue: pieRawValue) {
    // Got a valid 'pieType'!
}

