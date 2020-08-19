//
//  InputView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/15.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical, 16)
            .padding(.horizontal, 16)
            .background(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .stroke(Color.red, lineWidth: 2)
        )
    }
}

struct InputView: View {
    @State private var string: String = ""
    @ObservedObject var todoVM: TodoViewModel
    var body: some View {
        TextField("メモを入力",
                  text: $string,
                  onCommit: {
                    self.string = ""

        })
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
