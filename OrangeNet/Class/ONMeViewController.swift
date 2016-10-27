//
//  ONMeViewController.swift
//  OrangeNet
//
//  Created by li yunxin on 2016/10/20.
//  Copyright © 2016年 li yunxin. All rights reserved.
//

import UIKit
import Kingfisher

class ONMeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView?
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        title = "我的"
        
        initView()
    }
    
    func initView() {
        tableView = {
            $0.delegate = self
            $0.dataSource = self
            $0.register(MeTableCell.self, forCellReuseIdentifier: "cell")
            self.view.addSubview($0)
            $0.snp.makeConstraints { make in
                make.center.size.equalTo(self.view)
            }
            return $0
        }(UITableView())
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MeTableCell
        return cell
    }
    
}
