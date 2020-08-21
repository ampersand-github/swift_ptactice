//
//  SubmitButtonComponent.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/21.
//  Copyright © 2020 開発. All rights reserved.
//

import SwiftUI

struct SubmitButtonComponent: View {
    @ObservedObject var todoVM: TodoViewModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button(action: {
            print("Button Tapped")
            // https://capibara1969.com/2508/ リファクタリングするときここ参照
            /*
             self.todoVM.titleList.append(
             TodoModel(
             title: self.string,
             dateDeadLine: self.dateFlag ?self.date : nil,
             timeDeadLine: self.timeFlag ?self.time : nil,
             isComplete: false
             )
             )
             */
            self.presentationMode.wrappedValue.dismiss()

        }) {
            Text("Button")
        }
    }
}
