//
//  InputSheetView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/16.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct MyToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
                .frame(width: 22, height: 22)
                .onTapGesture { configuration.isOn.toggle() }
        }
    }
}

struct InputSheetView: View {
    @ObservedObject var todoVM: TodoViewModel
    @Environment(\.presentationMode) var presentationMode
    @State private var string: String = ""
    @State var dateFlag: Bool = false
    @State var timeFlag: Bool = false
    @State private var date = Date()
    @State private var time = Date()

    private let backgroundColor = Color(red: 239.0 / 255.0, green: 243.0 / 255.0, blue: 244.0 / 255.0, opacity: 1.0)

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Spacer().frame(height: 24)
                TextFeildView()
                HStack {
                    Text("日付の期限").font(.headline)
                    Toggle("", isOn: $dateFlag)
                    Spacer().frame(width: 8)
                }

                VStack {
                    Group {
                        if self.dateFlag {
                            DatePicker("", selection: $date, displayedComponents: .date)
                        } else {
                            Text("選択できません").font(.caption).opacity(0.6)
                                .frame(width: UIScreen.main.bounds.size.width - 32, height: 48)
                        }
                    }
                }.background(backgroundColor)

                Spacer().frame(height: 24)
                HStack {
                    Text("時間の期限").font(.headline)
                    Toggle("", isOn: $timeFlag)
                    Spacer().frame(width: 8)
                }
                // - - - - - -  -- - - - - - - -  ----------------------------------
                VStack {
                    Text("日付の期限").font(.headline)
                    Group {
                        if self.dateFlag {
                            DatePicker("", selection: $time, displayedComponents: .hourAndMinute)
                        } else {
                            Text("選択できません").font(.caption).opacity(0.6)
                                .frame(width: UIScreen.main.bounds.size.width - 32, height: 48)
                        }
                    }
                }

                // - - - - - -  -- - - - - - - -  ----------------------------------
                Spacer().frame(height: 48)
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
                Spacer()
                    .navigationBarTitle("メモを作成")
            }
        }.padding(EdgeInsets(top: 24, leading: 16, bottom: 24, trailing: 16))
    }
}

struct TextFeildView: View {
    @State private var string: String = ""
    private let backgroundColor = Color(red: 239.0 / 255.0, green: 243.0 / 255.0, blue: 244.0 / 255.0, opacity: 1.0)
    var body: some View {
        VStack {
            Text("メモのタイトル").font(.headline)
            TextField("メモを入力", text: $string)
                .padding(.all)
                .background(backgroundColor)
            Spacer().frame(height: 24)
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
