//
//  DetailView.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let item: ItemView
    var body: some View {
        VStack {
            Text(item.msg)
                .font(.largeTitle)
            Spacer(minLength: 0)
        }.frame(width: UIScreen.main.bounds.size.width)
            .background(item.color)
    }
}
