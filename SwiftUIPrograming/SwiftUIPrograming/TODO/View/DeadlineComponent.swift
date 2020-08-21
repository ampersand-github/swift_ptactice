//
//  DeadlineComponent.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/21.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct DeadlineComponent: View {
    var type: String
    @State var isToggle: Bool = false
    @State private var date = Date()
    private let backgroundColor = Color(red: 239.0 / 255.0, green: 243.0 / 255.0, blue: 244.0 / 255.0, opacity: 1.0)

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    lazy var title = type == "date" ? "日付" : "時間"
    func GetTitle() -> String {
        var _self = self
        print(_self.title)
        return _self.title
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    var body: some View {
        VStack {
            HStack {
                Text(GetTitle() + "の期限").font(.headline)
                Toggle("", isOn: $isToggle)
                Spacer().frame(width: 8)
            }
            VStack {
                Group {
                    if self.isToggle {
                        DatePicker("", selection: $date, displayedComponents: type == "date" ? .date : .hourAndMinute)
                    } else {
                        Text("選択できません").font(.caption).opacity(0.6)
                            .frame(width: UIScreen.main.bounds.size.width - 32, height: 48)
                    }
                }
            }.background(backgroundColor).cornerRadius(16)
            Spacer().frame(height: 24)
        }
    }
}
