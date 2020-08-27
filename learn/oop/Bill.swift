//
//  Bill.swift
//  learn
//
//  Created by TranTien on 8/26/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

public class Bill {
  let date: Date
  let amount: Double
  let unitPrice: Double
  let quantitative: Int
  var totalMoney: Double? = 0.0

  init(date: Date, amount: Double, unit unitPrice: Double, quantitative: Int) {
    self.date = date
    self.amount = amount
    self.unitPrice = unitPrice
    self.quantitative = quantitative
  }

  convenience init(date: Date, amount: Double, unitPrice: Double, quantitative: Int, totalMoney: Double) {
    self.init(date: date, amount: amount, unit: unitPrice, quantitative: quantitative)
    self.totalMoney = totalMoney
  }

  func toString() -> String {
    return "\(date.formatDate()) - \(amount) - \(unitPrice) - \(quantitative) - \(totalMoney ?? 0.0)"
  }
}
