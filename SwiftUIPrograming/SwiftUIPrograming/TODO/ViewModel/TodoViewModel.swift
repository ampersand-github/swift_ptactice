//
//  TodoViewModel.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/14.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

// todo ダミーデータ
class TodoViewModel: ObservableObject {
  @Published var todoList: [TodoModel] = [
  ]
  func initialTodo() -> TodoModel {
    TodoModel(title: "", dateDeadLine: Date(), isDate: false, timeDeadLine: Date(), isTime: false, isComplete: false)
  }

  // todo init ダミーデータを入れる
  // todo 編集
  // todo 削除
}
