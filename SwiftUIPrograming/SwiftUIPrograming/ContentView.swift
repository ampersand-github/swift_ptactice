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
                    NavigationLink(destination: CountView()) { Text("CountView").font(.title).padding() }
                    NavigationLink(destination: ButtonView()) { Text("ButtonView").font(.title).padding() }
                    NavigationLink(destination: FormView()) { Text("FormView").font(.title).padding() }
                    NavigationLink(destination: ColorView()) { Text("ColorView").font(.title).padding() }
                    NavigationLink(destination: LoremView()) { Text("LoremView").font(.title).padding() }
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
