//
//  main.swift
//  learn
//
//  Created by TranTien on 8/24/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

//enum ServiceRespose {
//  case result(String, String)
//  case fail(String)
//}
//
//let success = ServiceRespose.result("6.00AM", "5.00PM")
//let fail = ServiceRespose.fail("Out of cheese")
//
//switch fail {
//case let .result(sunrise, sunset):
//  print("Sunrise is at \(sunrise) and sunset is at \(sunset).\n")
//case let .fail(message):
//  print("fail with message = \(message)\n")
//}
//
//protocol ExampleProtocol {
//  var simpleDescription: String { get }
//  mutating func adjust()
//  mutating func edit()
//}
//
//class SimpleClass: ExampleProtocol {
//  var simpleDescription: String = "A very simple class."
//  var anotherProperty: Int = 69105
//  func adjust() {
//    simpleDescription += "  Now 100% adjusted."
//  }
//
//  func edit() {
//    simpleDescription += " edited"
//  }
//
//}
//var a = SimpleClass()
//a.adjust()
//a.edit()
//let aDescription = a.simpleDescription
//
//struct SimpleStructure: ExampleProtocol {
//  var simpleDescription: String = "A simple structure"
//  mutating func adjust() {
//    simpleDescription += " (adjusted)"
//  }
//
//  mutating func edit() {
//    simpleDescription += " edited"
//  }
//}
//var b = SimpleStructure()
//b.adjust()
//b.edit()
//let bDescription = b.simpleDescription
//
////print(aDescription)
////print(bDescription)
//
//
///*------------------- ERROR -------------------*/
//enum PrinterError: Error {
//  case outOfPaper
//  case noToner
//  case onFire
//}
//
//func send(job: Int, toPrinter printerName: String) throws -> String {
//  if printerName == "Never Has Toner" {
//    throw PrinterError.onFire
//  }
//  return "Job sent"
//}
//
//do {
//  let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
//  print(printerResponse)
//} catch PrinterError.onFire {
//  print("I'll just put this over here, with the rest of the fire.")
//} catch let printerError as PrinterError {
//  print("Printer error: \(printerError).")
//} catch {
//  print(error)
//}
//// Prints "Job sent"
//
///* GENERICS */
//
//func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
//  var result = [Item]()
//  for _ in 0..<numberOfTimes {
//    result.append(item)
//  }
//  return result
//}
//print(makeArray(repeating: "knock", numberOfTimes: 4))
//
//
//enum OptionalValue<Wrapper> {
//  case none
//  case some(Wrapper)
//}
//
//var possibleInteger: OptionalValue<Int> = .none
//possibleInteger = .some(100)
//
//print(possibleInteger)
//
//func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
//where T.Element: Equatable, T.Element == U.Element
//{
//  for lhsItem in lhs {
//    for rhsItem in rhs {
//      if lhsItem == rhsItem {
//        return true
//      }
//    }
//  }
//  return false
//}
//print(anyCommonElements([1, 2, 3], [3]))
//
//print()
//
//func greet(person: [String: String]) {
//  guard let name = person["name"] else {
//    print("antueeeeee")
//    return
//  }
//  print("hello \(name)")
//
//  guard let location = person["location"] else {
//    print("i hope the weather is nice near you")
//    return
//  }
//
//  print("i hope the weather is nice in \(location)")
//}
//
//
//greet(person: ["":""])
//greet(person: ["name": "hihi"])
//greet(person: ["name": "hehe", "location": "vietnam"])

ManagerCustomer.mInstance.run()
