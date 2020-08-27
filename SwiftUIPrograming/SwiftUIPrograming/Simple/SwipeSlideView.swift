//
//  SwipeSlideView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/27.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct SwipeSlideView: View {
  @State var isShowSubViw = false
  var body: some View {
    ZStack {
      // NOTE: 画面をレンダリングするかで画面遷移を発生する
      if isShowSubViw {
        MonthlyView()
      } else {
        Button(action: {
          withAnimation {
            self.isShowSubViw.toggle()
          }
        }, label: { Text("SubViewへ遷移") })
      }
    }
  }
}

struct MonthlyView: View {
  var body: some View {
    // NOTE: 画面遷移アニメーションは自前で書く
    GeometryReader { geometory in
      ZStack {
        VStack {
          Text("SubView")
        }
      }
      .frame(
        width: geometory.size.width,
        height: geometory.size.height
      )
      .background(Color.green)
      .animation(.easeInOut(duration: 0.42))
    }
    .transition(.move(edge: .bottom))
  }
}

struct SwipeSlideView_Previews: PreviewProvider {
  static var previews: some View {
    SwipeSlideView()
  }
}
