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
    @Environment(\.presentationMode) var presentationMode
    @State private var string: String = ""
    @State var dateFlag: Bool = false
    @State var timeFlag: Bool = false
    @State private var date = Date()
    @State private var time = Date()

    // [https://www.appcoda.com/swiftui-form-ui/ SwiftUI Tutorial: How to Build a Form UI for iOS Apps]
    // でつくりなおしてみる。
    // formはボタンが置けるけど、デザインがだめ

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("メモのタイトルを入力してください。")) {
                        TextField("メモを入力", text: $string)
                    }
                    Section(header: Text("日付の期限を選択してください。")) {
                        Toggle(isOn: $dateFlag) {
                            // Image(systemName: "tram.fill")
                            Text("日付の入力")
                        }
                        Group {
                            if self.dateFlag {
                                DatePicker("日付を選択", selection: $date, displayedComponents: .date)
                            } else {
                                Text("選択できません").font(.caption).opacity(0.6)
                            }
                        }
                    }
                    Section(header: Text("時間の期限を選択してください。")) {
                        Toggle(isOn: $timeFlag) {
                            // Image(systemName: "tram.fill")
                            Text("時間の入力").font(.caption).opacity(0.6)
                        }
                        Group {
                            if self.timeFlag {
                                DatePicker("時刻を選択", selection: $time, displayedComponents: .hourAndMinute)
                            } else {
                                Text("選択できません").font(.caption)
                            }
                        }
                    }
                    Button(action: {
                        print("Button Tapped")
                        // https://capibara1969.com/2508/ リファクタリングするときここ参照
                        self.todoVM.titleList.append(
                            TodoModel(
                                title: self.string,
                                dateDeadLine: self.dateFlag ?self.date : nil,
                                timeDeadLine: self.timeFlag ?self.time : nil,
                                isComplete: false
                            )
                        )
                        self.presentationMode.wrappedValue.dismiss()

                    }) {
                        Text("Button")
                    }
                }
                .navigationBarTitle("フォームタイトル")
            }
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
