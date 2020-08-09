//
//  ContentView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/07.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var pass: String = ""
    var body: some View {
        VStack {
            Text("name:\(self.name)\n(pass:\(self.pass))").font(.title)
            Form {
                TextField("name", text: $name)
                SecureField("pass", text: $pass)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 // 最初の
 // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 struct MyData: Identifiable {
     var id = UUID()
     var message: String
     var color: Color
 }

 struct ContentView: View {
     let data: [MyData] = [
         MyData(message: "welcome", color: Color.red),
         MyData(message: "hello", color: Color.green),
         MyData(message: "good", color: Color.blue),
         MyData(message: "bye", color: Color.yellow)
     ]
     var body: some View {
         VStack {
             VStack {
                 VStack {
                     Text("fitst").font(.largeTitle)
                     Text("second").font(.largeTitle)
                 }
                 .frame(width: 300, height: 100)
                 .border(Color.red)
                 .padding()
                 VStack {
                     Text("fitst").font(.largeTitle)
                     Text("second").font(.largeTitle)
                 }
                 .frame(width: 300, height: 100)
                 .border(Color.red)
                 .padding()
             }
             .border(Color.green)
             .padding()
             VStack {
                 ForEach(data) { item in
                     Text("No, \(item.message).")
                         .font(.largeTitle)
                         .background(item.color)
                         .padding(10)
                 }
             }
         }
     }
 }

 */

/*
 // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 // カウントアップ
 // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 struct ContentView: View {
     @State var message: String = "Click!"
     @State var count: Int = 0
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
 */

/*
 // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 // ボタン
 // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  struct ContentView: View {
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
 */
