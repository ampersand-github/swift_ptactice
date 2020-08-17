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
    var body: some View {
        ZStack {
            VStack {
                TabView {
                    // - - - - - tag1 - - - - - -
                    VStack(alignment: .leading) {
                        InputView(todoVM: todoVM)
                        Spacer().frame(height: 48)
                        TodoRowView(todoVM: todoVM)
                        Spacer()
                    }.padding(.horizontal, 24)
                        .tabItem {
                            VStack {
                                Image(systemName: "square.and.pencil")
                                Text("メモ")
                            }
                    }.tag(1)
                    // - - - - - tag2 - - - - - -
                    Text("Setting")
                        .tabItem {
                            VStack {
                                Image(systemName: "person.crop.circle")
                                Text("設定")
                            }
                    }.tag(2)
                }
            }
            FloatingActionButton(todoVM: todoVM)
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
