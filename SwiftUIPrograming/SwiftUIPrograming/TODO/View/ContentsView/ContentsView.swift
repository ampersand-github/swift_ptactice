//
//  ContentsView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/28.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct ContentsView: View {
  var body: some View {
    VStack {
      TodoRowView()
      Spacer()
    }
  }
}

struct ContentsView_Previews: PreviewProvider {
  static var previews: some View {
    TodoView()
  }
}
