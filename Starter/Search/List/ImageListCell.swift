//
//  ImageListCell.swift
//  Starter
//
//  Created by DragonCherry on 08/02/2018.
//  Copyright © 2018 DragonCherry. All rights reserved.
//

import RxSwift
import RxCocoa
import SnapKit
import TinyLog

class ImageListCell: UITableViewCell {
    
    class var nib: UINib { return UINib(nibName: String(describing: ImageListCell.self), bundle: nil) }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    func commonInit() {
        
    }
    
    override func updateConstraints() {
        super.updateConstraints()
    }
}
