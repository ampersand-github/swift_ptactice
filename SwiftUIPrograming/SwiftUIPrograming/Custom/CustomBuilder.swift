//
//  CustomBuilder.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/10.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct CustomContainer<Content>: View where Content: View {
  let screen = UIScreen.main.bounds.size
  let content: () -> Content

  init(@ViewBuilder content: @escaping () -> Content) {
    self.content = content
  }

  var body: some View {
    VStack {
      content()
    }.frame(width: screen.width)
      .font(.title).padding().background(Color.red)
  }
}

struct CustomBuilder_Previews: PreviewProvider {
  static var previews: some View {
    CustomContainer {
      Text("custom")
      Text("custom")
    }
  }
}
