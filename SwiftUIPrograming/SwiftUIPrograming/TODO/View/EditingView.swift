//
//  CreateMemoView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/21.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct EditingView: View {
  @ObservedObject var todoVM: TodoViewModel
  @Binding var isPresented: Bool
  @State var todo: TodoModel

  var body: some View {
    NavigationView {
      ScrollView {
        VStack {
          Spacer().frame(height: 24)
          TextFieldComponent(memoTitle: $todo.title)
          Spacer().frame(height: 24)
          DeadlineComponent(type: "date", isToggle: $todo.isDate, date: $todo.dateDeadLine)
          Spacer().frame(height: 24)
          DeadlineComponent(type: "hour", isToggle: $todo.isTime, date: $todo.timeDeadLine)
          Spacer().frame(height: 24)
          SubmitButtonComponent(todoVM: todoVM, isPresented: self.$isPresented, todo: self.todo)
          Spacer()
            .navigationBarTitle("メモを作成")
        }
      }
    }.padding(EdgeInsets(top: 24, leading: 16, bottom: 24, trailing: 16))
  }
}

struct EditingView_Previews: PreviewProvider {
  static var previews: some View {
    TodoView()
  }
}
