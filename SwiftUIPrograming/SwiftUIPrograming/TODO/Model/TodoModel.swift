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
  var title: String
  var dateDeadLine: Date
  var isDate: Bool
  var timeDeadLine: Date
  var isTime: Bool
  var isComplete: Bool
}
