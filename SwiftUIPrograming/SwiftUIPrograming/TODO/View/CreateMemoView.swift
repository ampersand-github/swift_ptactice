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
    @Environment(\.presentationMode) private var presentationMode
    //
    @State private var string: String = ""
    @State var isDate: Bool = false
    @State var IsTime: Bool = false
    @State var date: Date = Date()
    @State var time: Date = Date()

    var body: some View {
        NavigationView {
            // todo スクロール可能にする
            VStack {
                Spacer().frame(height: 24)
                TextFieldComponent(todoVM: todoVM, memoTitle: $string)
                Spacer().frame(height: 24)
                DeadlineComponent(type: "date", isToggle: $isDate, date: $date)
                Spacer().frame(height: 24)
                DeadlineComponent(type: "hour", isToggle: $IsTime, date: $time)
                Spacer().frame(height: 24)
                // todo 別ファイルにしたいが、dismissが動かなくなる
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                    print("Button Tapped")
                    // https://capibara1969.com/2508/ リファクタリングするときここ参照
                    self.todoVM.titleList.append(
                        TodoModel(
                            title: self.string,
                            dateDeadLine: self.date ,
                            timeDeadLine: self.date ,
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
