//
//  TextFieldComponent.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/21.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct TextFieldComponent: View {
    @State private var string: String = ""
    private let backgroundColor = Color(red: 239.0 / 255.0, green: 243.0 / 255.0, blue: 244.0 / 255.0, opacity: 1.0)

    var body: some View {
        VStack(alignment: .leading) {
            Text("メモのタイトル").font(.headline)
            TextField("メモを入力", text: $string)
                .padding(.all)
                .background(backgroundColor)
        }
    }
}
