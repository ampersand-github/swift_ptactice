//
//  TodoView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/14.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoView: View {
  @Environment(\.presentationMode) var presentationMode
  @State private var index: Int = 0
  var body: some View {
    ZStack {
      VStack {
        TabView {
          VStack(alignment: .leading) {
            ContentsView().environmentObject(TodoViewModel(isSetDammy: true))
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
      EditingFloatingActionButton()
    }
  }
}

struct TodoView_Previews: PreviewProvider {
  static var previews: some View {
    TodoView()
  }
}
