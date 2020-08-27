//
//  StringExtensions.swift
//  learn
//
//  Created by TranTien on 8/27/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

extension String{
  var doubleValue: Double {
    return (self as NSString).doubleValue
  }
  
  var intValue: Int{
    return (self as NSString).integerValue
  }
  
  var int32Value: Int32{
    return (self as NSString).intValue
  }
  
  var boolValue: Bool{
    return (self as NSString).boolValue
  }
}
