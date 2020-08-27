//
//  Customer.swift
//  learn
//
//  Created by TranTien on 8/26/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

public protocol Customer {
  var name: String { get }
  var bill: Bill { get }
  var code: String { get }

  func display()
  func calculateTotalMoney() -> Double
}

extension Customer {
  var code: String {
    //return
    NSUUID().uuidString.lowercased()
  }
}
