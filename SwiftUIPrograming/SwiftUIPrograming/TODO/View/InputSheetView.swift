//
//  InputSheetView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/16.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct InputSheetView: View {
    @ObservedObject var todoVM: TodoViewModel
    @State var dateFlag: Bool = true
    @State var timeFlag: Bool = true
    @State private var selectionDate = Date()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("メモのタイトルを入力してください。")) {
                    InputView(todoVM: self.todoVM)
                }
                Section(header: Text("日付の期限を選択してください。")) {
                    Toggle(isOn: $dateFlag) {
                        // Image(systemName: "tram.fill")
                        Text("日付の入力")
                    }
                    Group {
                        if self.dateFlag {
                            DatePicker("日付を選択", selection: $selectionDate, displayedComponents: .date)
                        } else {
                            Text("選択できません").font(.caption)
                        }
                    }
                }
                Section(header: Text("時間の期限を選択してください。")) {
                    Toggle(isOn: $timeFlag) {
                        // Image(systemName: "tram.fill")
                        Text("時間の入力")
                    }
                    DatePicker("時刻を選択", selection: $selectionDate, displayedComponents: .hourAndMinute)
                }
            }
            .navigationBarTitle("フォームタイトル")
        }
    }
}

struct InputSheetView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}

/*

 */
