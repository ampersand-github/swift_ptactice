//
//  TodoModel.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/14.
//  Copyright © 2020 開発. All rights reserved.
//

import Foundation
import SwiftUI

struct TodoModel: Identifiable {
  var id = UUID()
  var title: String = ""
  var dateDeadLine: Date = Date()
  var isDate: Bool = false
  var timeDeadLine: Date = Date()
  var isTime: Bool = false
  var isComplete: Bool = false
}
