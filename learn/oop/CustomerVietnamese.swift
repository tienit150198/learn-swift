//
//  CustomerVietnamese.swift
//  learn
//
//  Created by TranTien on 8/27/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

class CustomerVietnamese: Customer {
  var name: String
  var typeCustomer: String
  var bill: Bill

  init(type typeCustomer: String, name: String, bill: Bill) {
    self.typeCustomer = typeCustomer
    self.name = name
    self.bill = bill
  }

  func display() {
    print("\(code) - \(typeCustomer) - \(name) - \(bill.toString())")
  }

  func calculateTotalMoney() -> Double {
    if bill.amount <= bill.quantitative.doubleValue {
      return bill.amount * bill.unitPrice
    }

    let value1 = bill.amount * bill.unitPrice * bill.quantitative.doubleValue
    let value2 = bill.quantitative.doubleValue - bill.amount
    let value3 = bill.unitPrice * 2.5

    return (value1 + (value2) * value3)
  }
}
