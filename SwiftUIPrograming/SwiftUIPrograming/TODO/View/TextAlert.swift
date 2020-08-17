//
//  TextAlert.swift
//  SwiftUIPrograming
//
//  Created by 開発 on 2020/08/16.
//  Copyright © 2020 開発. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!

    // アラートビューコントローラー
    let alert = UIAlertController()

    @IBAction func alert(_ sender: Any) {
        // アラートコントローラー
        let alert = UIAlertController(title: "アラート", message: "テキストを入力せよ", preferredStyle: .alert)

        // OKボタンを生成
        let okAction = UIAlertAction(title: "OK", style: .default) { (_: UIAlertAction) in
            // 複数のtextFieldのテキストを格納
            guard let textFields: [UITextField] = alert.textFields else { return }
            // textからテキストを取り出していく
            for textField in textFields {
                switch textField.tag {
                case 1: self.label.text = textField.text
                case 2: self.label2.text = textField.text
                default: break
                }
            }
        }
        // OKボタンを追加
        alert.addAction(okAction)

        // Cancelボタンを生成
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        // Cancelボタンを追加
        alert.addAction(cancelAction)

        // TextFieldを２つ追加
        alert.addTextField { (text: UITextField!) in
            text.placeholder = "好きなテキストを入力してね"
            // １つ目のtextFieldのタグ
            text.tag = 1
        }
        alert.addTextField { (text: UITextField!) in
            text.placeholder = "好きなテキストを入力してね"
            // 2つ目のtextFieldのタグ
            text.tag = 2
        }

        // アラートを表示
        present(alert, animated: true, completion: nil)
    }
}
