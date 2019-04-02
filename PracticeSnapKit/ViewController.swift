//
//  ViewController.swift
//  PracticeSnapKit
//
//  Created by 中野湧仁 on 2019/02/17.
//  Copyright © 2019年 Yuto Nakano. All rights reserved.
//

import UIKit
import SnapKit

// MARK: - Property
class ViewController: UIViewController {
    let label = UILabel()
    let button = UIButton()
}

// MARK: - Life cycle
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //ラベル
        // 背景色
        self.view.backgroundColor = UIColor.gray
        
        //ラベルに文字を入れる
        self.label.text = "hello world!!"
        //ラベルを設置
        self.view.addSubview(self.label)
        // ラベルの位置をSnapKit（AutoLayoutで指定）
        self.label.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            
        // ボタン
        self.button.backgroundColor = UIColor.green
        self.button.setTitle("次に進む", for: .normal)
        self.view.addSubview(button)
            self.button.addTarget(self, action: #selector(self.buttonDidTap(_:)), for: .touchUpInside)
            self.button.snp.makeConstraints({ (make) in
                make.centerX.equalToSuperview()
                make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(100)
                
            })
        }
    }
    @objc func buttonDidTap(_ sender: UIButton){
        let secondViewController = SecondViewController()
        self.present(secondViewController, animated: true, completion: nil)
    }
}

// MARK: - Protocol
extension ViewController {
    
}

// MARK: - method
extension ViewController {
    
}

