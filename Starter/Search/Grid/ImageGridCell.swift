//
//  ImageGridCell.swift
//  Starter
//
//  Created by DragonCherry on 08/02/2018.
//  Copyright © 2018 DragonCherry. All rights reserved.
//

import RxSwift
import RxCocoa
import SnapKit
import TinyLog

class ImageGridCell: UICollectionViewCell {
    
    class var nib: UINib { return UINib(nibName: String(describing: ImageGridCell.self), bundle: nil) }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        
    }
    
    override func updateConstraints() {
        super.updateConstraints()
    }
}
