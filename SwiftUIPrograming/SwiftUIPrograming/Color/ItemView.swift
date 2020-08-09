//
//  ItemView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct ItemView: View, Identifiable {
    var id: Int
    let msg: String
    let color: Color
    var body: some View {
        HStack {
            Text(String(id))
                .font(.largeTitle)
                .frame(width: 72.0, height: 72.0)
                .foregroundColor(Color.white)
                .background(color)
            Text(msg)
                .font(.title)
                .padding()
                .foregroundColor(color)
        }
    }
}
