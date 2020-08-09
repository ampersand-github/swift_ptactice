//
//  LoremModel].swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//
import SwiftUI
class LoremViewModel: ObservableObject {
    @Published var data = String()

    init() {
        getData()
    }

    func getData() {
        LoremService().getText { data in self.data = data }
    }
}
