//
//  LoremView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct LoremView: View {
    @State var msg = "Plain Text."
    @ObservedObject var loremVM = LoremViewModel()

    var body: some View {
        VStack {
            Text(msg).font(.title)
            Divider()
            Text(loremVM.data).font(.body).padding()
            Divider()
            Spacer(minLength: 0)
        }
    }
}

struct LoremView_Previews: PreviewProvider {
    static var previews: some View {
        LoremView()
    }
}
