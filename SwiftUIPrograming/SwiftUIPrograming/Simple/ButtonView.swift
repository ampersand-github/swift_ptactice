//
//  ButtonView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
  @State var message: String = "Start!"
  @State var input: String = ""
  var body: some View {
    VStack {
      Text(self.message).font(.largeTitle)
      Spacer(minLength: 20).fixedSize()
      TextField("oh!", text: $input, onEditingChanged: { edit in
        if edit {
          self.message = "editing..."
        }
      }, onCommit: {
        self.message = "typed: \(self.input)!!"
      }).textFieldStyle(RoundedBorderTextFieldStyle())
      Spacer()
    }.padding(24)
  }
}

struct ButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonView()
  }
}
