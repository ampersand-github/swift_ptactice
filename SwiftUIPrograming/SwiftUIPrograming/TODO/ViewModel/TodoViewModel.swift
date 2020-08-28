//
//  TodoViewModel.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/14.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

class TodoViewModel: ObservableObject {
  @Published var todoList: [TodoModel]
  init(isSetDammy: Bool = false) {
    todoList = []
    isSetDammy ? addDammyList() : nil
  }

  func addDammyList() {
    let dammy1 = Calendar.current.date(byAdding: .day, value: -2, to: Date())!
    let dammy2 = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    let dammy3 = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    let dammy4 = Calendar.current.date(byAdding: .day, value: 2, to: Date())!
    let dammy5 = Calendar.current.date(byAdding: .day, value: 3, to: Date())!
    let dammy6 = Calendar.current.date(byAdding: .day, value: 4, to: Date())!
    todoList.append(
      contentsOf: [
        TodoModel(title: "アマゾンの注文が届く", dateDeadLine: dammy1, isDate: true, timeDeadLine: Date(), isTime: true, isComplete: false),
        TodoModel(title: "OOUI本読む", dateDeadLine: dammy2, isDate: true, timeDeadLine: Date(), isTime: true, isComplete: true),
        TodoModel(title: "試験の申込み", dateDeadLine: dammy3, isDate: true, timeDeadLine: Date(), isTime: true, isComplete: false),
        TodoModel(title: "友達と遊ぶ", dateDeadLine: dammy4, isDate: true, timeDeadLine: Date(), isTime: true, isComplete: false),
        TodoModel(title: "試験のための本を買う", dateDeadLine: dammy5, isDate: true, timeDeadLine: Date(), isTime: true, isComplete: false),
        TodoModel(title: "クリーニングに出す", dateDeadLine: dammy6, isDate: true, timeDeadLine: Date(), isTime: true, isComplete: false),
        TodoModel(title: "衣替えする", dateDeadLine: dammy6, isDate: false, timeDeadLine: Date(), isTime: false, isComplete: false)
      ]
    )
  }

  // todo 編集
  // todo 削除
}

struct TodoViewModel_Previews: PreviewProvider {
  static var previews: some View {
    /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
  }
}
