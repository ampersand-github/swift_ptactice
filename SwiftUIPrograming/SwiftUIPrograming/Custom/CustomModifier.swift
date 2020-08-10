//
//  CustomModifier.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/10.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct CustomModifier: ViewModifier {
    var color: Color

    init(color: Color = Color.black) {
        self.color = color
    }

    func body(content: Content) -> some View {
        content
            .font(.title).padding().foregroundColor(color)
    }
}

struct CustomModifier_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Text("aaaaaa").modifier(CustomModifier())
            Text("aaaaaa").modifier(CustomModifier(color: Color.red))
        }
    }
}
