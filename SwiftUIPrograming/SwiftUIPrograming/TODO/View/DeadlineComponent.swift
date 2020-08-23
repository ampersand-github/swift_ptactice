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
  @Binding var isToggle: Bool
  @Binding var date: Date
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  lazy var title = type == "date" ? "日付" : "時間"
  func getTitle() -> String {
    var mySelf = self
    print(mySelf.title)
    return mySelf.title
  }

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  var body: some View {
    VStack {
      HStack {
        Text(getTitle() + "の期限").font(.headline)
        Toggle("", isOn: $isToggle)
        Spacer().frame(width: 8)
      }
      VStack {
        Group {
          if self.isToggle {
            DatePicker(selection: $date, displayedComponents: type == "date" ? .date : .hourAndMinute) {
              Text("")
            }.labelsHidden()
          } else {
            Text("選択できません").font(.caption).opacity(0.6)
              .frame(width: UIScreen.main.bounds.size.width - 32, height: 48)
          }
        }
      }.modifier(InputModifier())
      Spacer().frame(height: 24)
    }
  }
}
