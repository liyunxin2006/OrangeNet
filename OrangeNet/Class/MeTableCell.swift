//
//  MeTableCell.swift
//  OrangeNet
//
//  Created by li yunxin on 2016/10/27.
//  Copyright © 2016年 li yunxin. All rights reserved.
//

import UIKit

class MeTableCell: UITableViewCell {
    
    let imgView: UIImageView = {
        $0.backgroundColor = UIColor.yellow
        return $0
    }(UIImageView())
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(imgView)
        imgView.snp.makeConstraints { make in
            make.width.height.equalTo(60)
            make.centerY.equalTo(contentView)
            make.left.equalTo(contentView).offset(5)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


