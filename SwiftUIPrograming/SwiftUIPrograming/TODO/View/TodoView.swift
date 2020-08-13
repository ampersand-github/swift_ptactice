//
//  TodoView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/14.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoView: View {
    @ObservedObject var TodoVM = TodoViewModel()
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("StringProtocol", text: $TodoVM.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("bvbbb")
                Text("bvbbb")
                Text(TodoVM.title)
                Spacer() // 一番下に書くと上揃えになる。
            }.padding(24)
                .navigationBarTitle(Text("TODO-LIST")) // 配置場所に注意、これがappbarに相当する。
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
