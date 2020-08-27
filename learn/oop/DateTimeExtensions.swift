//
//  DateTimeExtensions.swift
//  learn
//
//  Created by TranTien on 8/27/20.
//  Copyright © 2020 Trần Tiến. All rights reserved.
//

import Foundation

extension Date {
  func formatDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMMM-dd-yyyy"

    return dateFormatter.string(from: self)
  }

  func formatDate(format: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format

    return dateFormatter.string(from: self)
  }

  func createDate(day: Int?, month: Int?, year: Int?) -> Date? {
    var dateComponent = DateComponents()
    dateComponent.day = day
    dateComponent.month = month
    dateComponent.year = year

    return Calendar.current.date(from: dateComponent)
  }

  func isEqualTo(_ date: Date) -> Bool {
    return self == date
  }

  func isGreaterThan(_ date: Date) -> Bool {
    return self > date
  }

  func isSmallerThan(_ date: Date) -> Bool {
    return self < date
  }

  func isGranterEndEqual(_ date: Date) -> Bool {
    return self >= date
  }

  func isSmallerAndEquals(_ date: Date) -> Bool {
    return self <= date
  }

  func isBetween(dateStart: Date, dateEnd: Date) -> Bool {
    return self.isGranterEndEqual(dateStart) && self.isSmallerAndEquals(dateEnd)
  }
}
