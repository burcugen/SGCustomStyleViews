//
//  MTButton.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 01/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

@IBDesignable class SGButton: UIButton {
    
    @IBInspectable var customStyle : String?{
        didSet{
            SGCustomStyleUtils.applyCustomStyle(self, style: self.customStyle)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SGCustomStyleUtils.applyCustomStyle(self, style: self.customStyle)
    }
}
