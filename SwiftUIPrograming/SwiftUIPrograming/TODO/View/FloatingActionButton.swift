//
//  FloatingActionButton.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/16.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct FloatingActionButton: View {
  @ObservedObject var todoVM: TodoViewModel
  @State private var isPresented = false
  var body: some View {
    VStack {
      Spacer()
      HStack {
        Button(action: {
          self.isPresented = true
        }, label: {
          Image(systemName: "plus")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .frame(width: 64, height: 64) // 選択領域をオレンジ円と同じにする
        })
          .frame(width: 64, height: 64)
          .background(Color.orange)
          .cornerRadius(48.0)
          .shadow(color: .gray, radius: 3, x: 3, y: 3)
          .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.0, trailing: 16.0)) // --- 5
      }.sheet(isPresented: $isPresented) {
        // todo create -> edit
        EditingView(
          todoVM: self.todoVM,
          isPresented: self.$isPresented,
          todo: self.todoVM.initialTodo()
        )
      }
    }
  }
}

struct FloatingActionButton_Previews: PreviewProvider {
  static var previews: some View {
    TodoView()
  }
}
