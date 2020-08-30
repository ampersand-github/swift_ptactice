//
//  TodoRowView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/15.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoRowView: View {
  @EnvironmentObject var todoVM: TodoViewModel
  @State private var vibrateOnRing = false
  static let dateFormatter: DateFormatter = customDateFormatter(format: "yyyy/MM/dd")
  static let timeFormatter: DateFormatter = customDateFormatter(format: "hh:mm")

  var body: some View {
    ScrollView {
      VStack(spacing: 24) {
        ForEach(todoVM.todoList) { todo in
          CardView(todo: todo)
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
