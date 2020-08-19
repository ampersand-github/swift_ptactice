//
//  TodoViewModel.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/14.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

class TodoViewModel: ObservableObject {
    @Published var titleList: [TodoModel] = [
        TodoModel(title: "aaa", dateDeadLine: nil, timeDeadLine: nil, isComplete: false)
    ]
}
