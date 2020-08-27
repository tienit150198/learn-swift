//
//  TypeCustomer.swift
//  learn
//
//  Created by TranTien on 8/27/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

enum TypeCustomer: String {
  case ACTIVITY, BUSINESS, PRODUCT

  var toStringValue: String {
    switch self {
    case .ACTIVITY:
      return "ACTIVITY"
    case .BUSINESS:
      return "BUSSINESS"
    default:
      return "PRODUCT"
    }
  }
}
