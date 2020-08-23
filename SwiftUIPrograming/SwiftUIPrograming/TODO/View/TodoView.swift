//
//  TodoView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/14.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoView: View {
  @ObservedObject var todoVM: TodoViewModel = TodoViewModel()
  @Environment(\.presentationMode) var presentationMode
  var body: some View {
    ZStack {
      VStack {
        TabView {
          VStack(alignment: .leading) {
            TodoRowView(todoVM: todoVM)
            Spacer()
          }.padding(.horizontal, 24)
            .tabItem {
              VStack {
                Image(systemName: "square.and.pencil")
                Text("メモ")
              }
            }.tag(1)
          // todo settingviewつくる
          Text("Setting")
            .tabItem {
              VStack {
                Image(systemName: "person.crop.circle")
                Text("設定")
              }
            }.tag(2)
        }
      }
      // todo なんのfabかわからんので名前を変える
      EditingFloatingActionButton(todoVM: todoVM)
    }
  }
}

struct TodoView_Previews: PreviewProvider {
  static var previews: some View {
    TodoView()
  }
}
