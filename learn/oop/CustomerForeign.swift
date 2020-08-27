//
//  CustomerForeign.swift
//  learn
//
//  Created by TranTien on 8/26/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

class CustomerForeign: Customer {
  var name: String
  var country: String
  var bill: Bill

  init(country: String, name: String, bill: Bill) {
    self.name = name
    self.bill = bill
    self.country = country
    
    self.bill.totalMoney = calculateTotalMoney()
  }

  func display() {
    print("\(code) - \(country) - \(name) - \(bill.toString())")
  }

  func calculateTotalMoney() -> Double {
    return bill.amount * bill.unitPrice
  }

}
