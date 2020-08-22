//
//  CreateMemoView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/21.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct CreateMemoView: View {
    @ObservedObject var todoVM: TodoViewModel

    @State private var string: String = ""
    @State var dateFlag: Bool = false
    @State var timeFlag: Bool = false
    @State private var date = Date()
    @State private var time = Date()
    private let backgroundColor = Color(red: 239.0 / 255.0, green: 243.0 / 255.0, blue: 244.0 / 255.0, opacity: 1.0)
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 24)
                TextFieldComponent(todoVM: todoVM, memoTitle: $string)
                Spacer().frame(height: 24)
                DeadlineComponent(type: "date")
                Spacer().frame(height: 24)
                DeadlineComponent(type: "hour")
                Spacer().frame(height: 24)
                // todo 別ファイルにしたいが、dismissが動かなくなる
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
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

                }) {
                    Text("Button")
                }
                Spacer()
                    .navigationBarTitle("メモを作成")
            }
        }.padding(EdgeInsets(top: 24, leading: 16, bottom: 24, trailing: 16))
    }
}

struct CreateMemoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
