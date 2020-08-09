//
//  LoremService.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/09.
//  Copyright © 2020 開発. All rights reserved.
//
import Foundation

class LoremService {
    let url: URL = URL(string: "https://loripsum.net/api/plaintext")!
    func getText(res: @escaping (String) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, _ in
            DispatchQueue.main.async {
                res(String(data: data!, encoding: String.Encoding.utf8)!)
            }
        }.resume()
    }
}
