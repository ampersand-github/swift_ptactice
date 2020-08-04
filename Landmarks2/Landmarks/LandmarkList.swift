//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 開発 on 2020/08/04.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
   
    var body: some View {
        NavigationView{
            List(landmarkData) {
                landmark in NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
        }
             .navigationBarTitle(Text("Landmarks"))
    }
}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
                ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
