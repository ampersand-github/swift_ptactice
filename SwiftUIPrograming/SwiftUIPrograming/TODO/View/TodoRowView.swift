//
//  TodoRowView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/15.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TodoRowView: View {
    @ObservedObject var todoVM = TodoViewModel()
    @State private var vibrateOnRing = false
    var body: some View {
        VStack(spacing: 24) {
            ForEach(todoVM.titleList) { item in
                HStack(spacing: 24) {
                    Toggle("", isOn: self.$vibrateOnRing).frame(width: 48)
                    VStack {
                        Text("期限：12/24").font(.caption)
                        Text(String("\(item.dateDeadLine)")).font(.caption)
                        Text(item.title).font(.title)
                    }
                    Spacer()
                }
                Divider()
            }
        }
    }
}

struct TodoRowView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
