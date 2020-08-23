//
//  TodoCardView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/23.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoCardView: View {
  @State var todo: TodoModel
  var body: some View {
    HStack(spacing: 24) {
      // Toggle("", isOn: self.todo.$isComplete).frame(width: 48)
      VStack(alignment: .leading) {
        Text(self.todo.isDate
          ? TodoRowView.dateFormatter.string(from: self.todo.dateDeadLine)
          : "-"
        ).font(.caption)
        Text(self.todo.isTime
          ? TodoRowView.timeFormatter.string(from: self.todo.timeDeadLine)
          : "-"
        ).font(.caption)
        Text(self.todo.title).font(.title)
      }
      Spacer()
    }
  }
}
