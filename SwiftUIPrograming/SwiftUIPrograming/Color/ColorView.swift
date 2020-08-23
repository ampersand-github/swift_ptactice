//
//  ColorView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct ColorView: View {
  @State var msg = ""
  let data = [
    ItemView(id: 1, msg: "red", color: Color.red),
    ItemView(id: 2, msg: "Green", color: Color.green),
    ItemView(id: 3, msg: "Blue", color: Color.blue),
    ItemView(id: 4, msg: "Yellow", color: Color.yellow)
  ]
  var body: some View {
    VStack {
      Text("Selected: '\(self.msg)'.").font(.title)
      NavigationView {
        Form {
          Section {
            List(data) { item in
              NavigationLink(destination: DetailView(item: item)) {
                item
              }
            }
          }.navigationBarTitle(Text("Select Your Data"))
        }
      }
    }
  }
}
