//
//  ONHomeViewController.swift
//  OrangeNet
//
//  Created by li yunxin on 2016/10/20.
//  Copyright © 2016年 li yunxin. All rights reserved.
//

import UIKit
import ReactiveCocoa
import SnapKit

class ONHomeViewController: UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        title = "首页"
        
        let textField = UITextField()
        textField.backgroundColor = UIColor.lightGray
        self.view .addSubview(textField)
        
        textField.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.center.equalTo(self.view)
        }
    }
    
}
