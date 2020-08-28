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
  let opacity: Double
  var body: some View {
    Button(
      action: {
        self.isPresented.toggle()
        // https://capibara1969.com/2508/ リファクタリングするときここ参照
        // todo　引数で渡されたmodelをapeendする
        // todo 処理をviewの中で書かない。vmで書いて、それに渡して上げるだけ
        self.todoVM.todoList.append(self.todo)
      },
      // todo button アイコン化
      label: { Text("  決定  ").bold().font(.body).foregroundColor(Color.white) }
    ).padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
      .background(RoundedRectangle(cornerRadius: 16, style: .continuous))
      .foregroundColor(Color.blue)
      .opacity(opacity)
  }
}
