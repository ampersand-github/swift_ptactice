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

    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 24)
                TextFieldComponent()
                Spacer().frame(height: 24)
                DeadlineComponent(type: "date")
                Spacer().frame(height: 24)
                DeadlineComponent(type: "hour")
                Spacer().frame(height: 24)
                SubmitButtonComponent(todoVM: todoVM)
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
