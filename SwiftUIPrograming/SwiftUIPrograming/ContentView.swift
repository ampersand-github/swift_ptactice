//
//  ContentView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/07.
//  Copyright © 2020 開発. All rights reserved.
//

import Neumorphic
import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      NavigationView {
        VStack {
          NavigationLink(destination: CountView()) { Text("CountView").modifier(CustomModifier()) }
          NavigationLink(destination: ButtonView()) { Text("ButtonView").modifier(CustomModifier()) }
          NavigationLink(destination: FormView()) { Text("FormView").modifier(CustomModifier()) }
          NavigationLink(destination: ColorView()) { Text("ColorView").modifier(CustomModifier()) }
          NavigationLink(destination: LoremView()) { Text("LoremView").modifier(CustomModifier()) }
          NavigationLink(destination: TodoView()) { Text("TodoView").modifier(CustomModifier()) }
          //
          HStack {
            RoundedRectangle(cornerRadius: 20).fill(Neumorphic.shared.mainColor()).softOuterShadow().frame(width: 80, height: 80)
            RoundedRectangle(cornerRadius: 20).fill(Neumorphic.shared.mainColor()).softInnerShadow(RoundedRectangle(cornerRadius: 20)).frame(width: 80, height: 80)
            Circle().fill(Neumorphic.shared.mainColor()).softOuterShadow().frame(width: 80, height: 80)
            Circle().fill(Neumorphic.shared.mainColor()).softInnerShadow(Circle()).frame(width: 80, height: 80)
          }
          Button(action: {}) {
            Text("Soft Button").fontWeight(.bold)
          }
          .softButtonStyle(RoundedRectangle(cornerRadius: 20))
          HStack {
            Button(action: {}) {
              Image(systemName: "heart.fill")
            }.softButtonStyle(Circle())

            Button(action: {}) {
              Image(systemName: "heart.fill")
            }.softButtonStyle(Circle(), mainColor: Color.red, textColor: Color.white, darkShadowColor: Color(rgb: 0x993333, alpha: 1), lightShadowColor: Color("redButtonLightShadow"))
          }
          HStack {
            Spacer()
            Button(action: {}) {
              Text(".none").fontWeight(.bold)
            }.softButtonStyle(Capsule(), pressedEffect: .none)
            Spacer()
            Button(action: {}) {
              Text(".flat").fontWeight(.bold)
            }.softButtonStyle(Capsule(), pressedEffect: .flat)
            Spacer()
            Button(action: {}) {
              Text(".hard").fontWeight(.bold)
            }.softButtonStyle(Capsule(), pressedEffect: .hard)
            Spacer()
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
