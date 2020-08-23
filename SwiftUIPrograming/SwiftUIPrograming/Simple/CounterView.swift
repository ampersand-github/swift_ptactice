//
//  CounterView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI
struct CountView: View {
  @State var message: String = "Click!"
  @State var count: Int = 0
  var body: some View {
    VStack {
      Text("\(self.count)回クリックしました。").font(.largeTitle)
      Spacer(minLength: 20).fixedSize()
      HStack {
        Button(action: {
          self.count += 1
        }, label: {
          Text("+").font(.title).frame(width: 100, height: 50).border(Color.blue)
        })
        Button(action: {
          self.count -= 1
        }, label: {
          Text("-").font(.title).frame(width: 100, height: 50).border(Color.blue)
        })
      }
    }
  }
}
