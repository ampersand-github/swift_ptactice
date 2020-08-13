//
//  Home.swift
//  Landmarks
//
//  Created by 開発 on 2020/08/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI


struct CategoryHome: View {
    var categories:[String: [Landmark]]{
        Dictionary(
            grouping: landmarkData, by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView{
            List{
                ForEach(categories.keys.sorted(),id:\.self){ key in
                    CategoryRow(
                        categoryName: Key,
                        items: self.categories[Key]!)
                }
            }.navigationBarTitle(Text("Featured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
