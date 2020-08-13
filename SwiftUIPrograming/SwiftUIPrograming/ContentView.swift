//
//  ContentView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/07.
//  Copyright © 2020 開発. All rights reserved.
//

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
