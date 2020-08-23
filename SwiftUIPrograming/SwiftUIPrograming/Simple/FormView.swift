//
//  FormView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct FormView: View {
  @State var name: String = ""
  @State var pass: String = ""
  var body: some View {
    VStack {
      Text("name:\(self.name)\n(pass:\(self.pass))").font(.title)
      Form {
        Section(header: Text("header").font(.headline)) {
          TextField("name", text: $name)
          SecureField("pass", text: $pass)
        }
        Section(header: Text("header").font(.headline)) {
          TextField("name", text: $name)
          SecureField("pass", text: $pass)
        }
      }
    }
  }
}

struct FormView_Previews: PreviewProvider {
  static var previews: some View {
    FormView()
  }
}
