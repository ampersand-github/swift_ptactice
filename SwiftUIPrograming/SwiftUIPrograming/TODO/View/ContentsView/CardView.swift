//
//  CardView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/29.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct CheckView: View {
  @Binding var isChecked: Bool
  func toggle() { isChecked = !isChecked }
  var body: some View {
    Button(action: toggle) {
      Image(systemName: isChecked ? "checkmark.square" : "square")

    }.foregroundColor(.black).opacity(0.6)
  }
}

struct CardView: View {
  @State var todo: TodoModel
  func crarteDeadlineText() -> String {
    if todo.dateDeadLine == Date() {
      print("今日が締切")
    } else if todo.dateDeadLine < Date() {
      print("まだ")
    } else {
      print("超過")
    }
    return DateUtils.stringFromDate(date: todo.dateDeadLine, format: "dd")
  }

  var body: some View {
    HStack { // spacingはここでやらないのであとで消す
      // - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  -
      CheckView(isChecked: self.$todo.isComplete)
      Spacer().frame(width: 24)
      // - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  -
      VStack(alignment: .leading) {
        Text(self.todo.title).font(.headline)
        Spacer().frame(height: 8)
        HStack {
          Text(self.todo.isDate
            ? TodoRowView.dateFormatter.string(from: self.todo.dateDeadLine)
            : "-"
          )
          Text(self.todo.isTime
            ? TodoRowView.timeFormatter.string(from: self.todo.timeDeadLine)
            : "-"
          )
        }.font(.caption).opacity(0.6)
      }
      // - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  -
      Spacer()
      VStack(alignment: .trailing) {
        Text(crarteDeadlineText()).font(.caption).opacity(0.6)
        Spacer().frame(height: 8)
        Text("tag").font(.caption).opacity(0.6)
      }
      // - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  -
    }
    .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
    .background(Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255))
    .cornerRadius(16)
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardViewPreview(todoVM: TodoViewModel(isSetDammy: true))
  }
}

struct CardViewPreview: View {
  @State var todoVM: TodoViewModel

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
