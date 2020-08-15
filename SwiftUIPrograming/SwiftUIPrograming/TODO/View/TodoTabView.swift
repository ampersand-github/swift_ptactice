//
//  TodoTabView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/15.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoTabView: View {
    @ObservedObject var todoVM = TodoViewModel()
    var body: some View {
        TabView {
            VStack {
                ForEach(todoVM.titleList) { item in
                    Text(item.title)
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "a")
                    Text("TabA")
                }
            }.tag(1)
            Text("This is Tab B.")
                .tabItem {
                    VStack {
                        Image(systemName: "bold")
                        Text("TabB")
                    }
            }.tag(2)
        }
    }
}

struct TodoTabView_Previews: PreviewProvider {
    static var previews: some View {
        TodoTabView()
    }
}
