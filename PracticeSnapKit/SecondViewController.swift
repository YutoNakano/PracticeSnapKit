//
//  SecondViewController.swift
//  PracticeSnapKit
//
//  Created by 中野湧仁 on 2019/02/17.
//  Copyright © 2019年 Yuto Nakano. All rights reserved.
//

import UIKit
import SnapKit

// MARK: - Property
class SecondViewController: UIViewController {
    let segmentedButton =  UISegmentedControl()
    
}

// MARK: - Life cycle
extension SecondViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.brown
            self.segmentedButton.backgroundColor = UIColor.red
        self.segmentedButton.selectedSegmentIndex = 3
        self.view.addSubview(segmentedButton)
        self.segmentedButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
            self.segmentedButton.snp.makeConstraints({ (make) in
                make.width.equalToSuperview()
                make.height.equalTo(self.segmentedButton.snp_height).priority(250)
                make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(100)
                
            })
        }
    }



// MARK: - Protocol
extension SecondViewController {
    
}

// MARK: - method
extension SecondViewController {
    @objc func buttonTapped(_ sender: UISegmentedControl){
        self.dismiss(animated: true, completion: nil)
    }
}

