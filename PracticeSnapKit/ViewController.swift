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
    
}

// MARK: - Life cycle
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色
        self.view.backgroundColor = UIColor.gray
        
        //ラベルに文字を入れる
        self.label.text = "hello world!!"
        //ラベルを設置
        self.view.addSubview(self.label)
        // ラベルの位置をSnapKit（AutoLayoutで指定）
        self.label.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
}

// MARK: - Protocol
extension ViewController {
    
}

// MARK: - method
extension ViewController {
    
}

