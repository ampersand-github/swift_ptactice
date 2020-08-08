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
            Text("fitst").font(.largeTitle)
            Text("second").font(.largeTitle)
        }.frame(width: 300, height: 100)
            .border(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
