//
//  ONTabBarController.swift
//  OrangeNet
//
//  Created by li yunxin on 2016/10/20.
//  Copyright © 2016年 li yunxin. All rights reserved.
//

import UIKit

class ONTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customControllers()
    }
    
    fileprivate func customControllers() {
        let homeController = ONHomeViewController()
        homeController.tabBarItem = UITabBarItem(title: "首页", image: nil, selectedImage: nil)
        
        let meController = ONMeViewController()
        meController.tabBarItem = UITabBarItem(title: "我的", image: nil, selectedImage: nil)
        
        self.viewControllers = [homeController, meController]
    }
    
}
