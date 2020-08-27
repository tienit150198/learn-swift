//
//  ManagerCustomer.swift
//  learn
//
//  Created by TranTien on 8/27/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

class ManagerCustomer {
  var customers = [Customer]()

  static let mInstance = ManagerCustomer()

  private init() { }

  private func showMenu() -> Int? {
    print("-------------------------------------")
    print("1. Input customer")
    print("2. Display all customer")
    print("3. Classify customer")
    print("4. Average total money of customer foreign")
    print("5. Display bill in 09/2013 on all customer")
    print("0. Exit")
    print("> ", separator: "", terminator: "")

    return (readLine() as NSString?)?.integerValue
  }

  func run() {
    loop: while(true) {
      switch showMenu() {
      case 1:
        inputCustomer()
      case 2:
        displayAllCustomer()
      case 3:
        displayCustomerForType()
      case 4:
        displayAverageMoneyCustomerForeign()
      case 5:
        displayBillInTime()
      default:
        print("bye bye")
        break loop
      }
    }
  }

  func inputCustomer() {
    print("Enter type customer(1. Vietnam - 2.Foreign):", separator: "", terminator: "")

    let isCustomerVietnamese = readLine()?.intValue == 1

    customers.append(makeCustomer(isCustomerVietnamese))

  }

  func makeCustomer(_ isCustomerVietnamese: Bool) -> Customer {
    print("enter name: ", separator: "", terminator: "")
    let name = readLine()
    print("enter day: ", separator: "", terminator: "")
    let day = readLine()?.intValue
    print("enter month: ", separator: "", terminator: "")
    let month = readLine()?.intValue
    print("enter year: ", separator: "", terminator: "")
    let year = readLine()?.intValue
    print("enter unit price: ", separator: "", terminator: "")
    let unitPrice = readLine()?.doubleValue
    print("enter quantitative: ", separator: "", terminator: "")
    let quantitative = readLine()?.intValue
    print("enter amount: ", separator: "", terminator: "")
    let amount = readLine()?.doubleValue

    let date = Date().createDate(day: day, month: month, year: year)
    let bill = Bill(date: date!, amount: amount!, unit: unitPrice!, quantitative: quantitative!)

    if(isCustomerVietnamese) {
      print("--------------- chose customer type -----------")
      print("1. Activity")
      print("2. Business")
      print("3. Product")
      print("> ", separator: "", terminator: "")

      var typeCustomer: String

      switch readLine()?.intValue {
      case 1:
        typeCustomer = TypeCustomer.ACTIVITY.toStringValue
      case 2:
        typeCustomer = TypeCustomer.BUSINESS.toStringValue
      default:
        typeCustomer = TypeCustomer.PRODUCT.toStringValue
      }
      
      print()

      return CustomerVietnamese(type: typeCustomer, name: name!, bill: bill)
    } else {
      print("enter country: ", separator: "", terminator: "")
      let country = readLine()

      return CustomerForeign(country: country!, name: name!, bill: bill)
    }

  }

  func displayAllCustomer() {
    customers.forEach { item in
      item.display()
    }
  }

  func displayCustomerForType() {
    let customerVietnamese = customers.filter { $0 is CustomerVietnamese }.count
    print("vietnamese have \(customerVietnamese) customer and foreign have \(customers.count - customerVietnamese) customer")
  }

  func displayAverageMoneyCustomerForeign() {
    print("Averate money of customer foreign = \(calculateMoneyCustomerForeign())")
  }

  // display bill in 09/2013
  func displayBillInTime() {
    let startDate = Date().createDate(day: 1, month: 9, year: 2013)
    let endDate = Date().createDate(day: 30, month: 9, year: 2013)

    customers
      .filter { $0.bill.date.isBetween(dateStart: startDate!, dateEnd: endDate!) }
      .forEach { $0.display() }
  }

  func calculateMoneyCustomerForeign() -> Double {
    var totalMoney = 0.0
    var countForeignCustomer = 0
    customers
      .filter { $0 is CustomerForeign }
      .forEach {
        totalMoney += $0.bill.totalMoney!
        countForeignCustomer += 1
    }

    if(countForeignCustomer == 0) {
      return 0.0
    }

    return (totalMoney / countForeignCustomer.doubleValue)
  }


}
