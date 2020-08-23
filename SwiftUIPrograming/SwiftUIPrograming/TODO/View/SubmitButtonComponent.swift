//
//  SubmitButtonComponent.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/21.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct SubmitButtonComponent: View {
  @ObservedObject var todoVM: TodoViewModel
  @Binding var isPresented: Bool
  var todo: TodoModel
  var body: some View {
    Button(
      action: {
        print("Button Tapped")
        self.isPresented.toggle()
        // https://capibara1969.com/2508/ リファクタリングするときここ参照
        // todo　引数で渡されたmodelをapeendする
        self.todoVM.todoList.append(self.todo)
      },
      label: { Text("Button") }
    )
  }
}
