//
//  ViewController.swift
//  day1taskApp
//
//  Created by 高橋知憲 on 2019/06/01.
//  Copyright © 2019 高橋知憲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var leftText: UITextField!
    
    @IBOutlet var rightText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //どの四則演算ボタンが押されたかを判定
    @IBAction func operationButton(_ sender: UIButton) {
        //左右のフィールドの文字列が両方Int型に変換できるかどうかをチェック
        if let leftNum = Int(leftText!.text!), let rightNum = Int(rightText!.text!) {
            
            //押されたボタンのタイトルラベルの文字で場合分け
            switch sender.titleLabel?.text {
                
            //足し算
            case "+":
                resultLabel.text = String(leftNum + rightNum)
                checkOddOrEven(num: leftNum + rightNum)
            //引き算
            case "-":
                resultLabel.text = String(leftNum - rightNum)
                checkOddOrEven(num: leftNum - rightNum)
            //掛け算
            case "*":
                resultLabel.text = String(leftNum * rightNum)
                checkOddOrEven(num: leftNum * rightNum)
            //割り算
            case "/":
                resultLabel.text = String(leftNum / rightNum)
                checkOddOrEven(num: leftNum / rightNum)
            //それ以外（今回はクリアボタン）
            default:
                leftText.text = ""
                rightText.text = ""
                resultLabel.text = "0"
            }
        }
    }
    func checkOddOrEven(num: Int){
        switch num.isMultiple(of: 2) {
        case true:
            resultLabel.text! += " 偶数"
        default:
            resultLabel.text! += " 奇数"
        }
    }
}

