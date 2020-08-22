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
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()

    var body: some View {
        VStack(spacing: 24) {
            ForEach(todoVM.titleList) { _ in
                HStack(spacing: 24) {
                    Toggle("", isOn: self.$vibrateOnRing).frame(width: 48)
                    VStack {
                        // todo あとでやる
                        Text("Task due date: \(Date(), formatter: Self.taskDateFormat)")
                        // Text("\(item.dateDeadLine)").font(.caption)
                        // Text("DateFormat: \(selectedDate, formatter: dateFormat)")
                        // Text(String("\(item.timeDeadLine)")).font(.caption)
                        // Text(item.title).font(.title)
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
