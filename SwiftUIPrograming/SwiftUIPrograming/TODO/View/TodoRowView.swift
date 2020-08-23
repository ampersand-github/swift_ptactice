//
//  TodoRowView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/15.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoRowView: View {
  @ObservedObject var todoVM = TodoViewModel()
  @State private var vibrateOnRing = false
  static let dateFormatter: DateFormatter = customDateFormatter(format: "yyyy/MM/dd")
  static let timeFormatter: DateFormatter = customDateFormatter(format: "hh:mm")

  var body: some View {
    ScrollView {
      VStack(spacing: 24) {
        ForEach(todoVM.todoList) { item in
          HStack(spacing: 24) {
            Toggle("", isOn: self.$vibrateOnRing).frame(width: 48)
            VStack(alignment: .leading) {
              Text(item.isDate
                ? TodoRowView.dateFormatter.string(from: item.dateDeadLine)
                : "-"
              ).font(.caption)
              Text(item.isTime
                ? TodoRowView.timeFormatter.string(from: item.timeDeadLine)
                : "-"
              ).font(.caption)
              Text(item.title).font(.title)
            }
            Spacer()
          }
          Divider()
        }
      }
    }
  }
}

struct TodoRowView_Previews: PreviewProvider {
  static var previews: some View {
    TodoView()
  }
}
