//
//  MTImageView.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 10/7/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

@IBDesignable class SGImageView: UIImageView {
    @IBInspectable var customStyle : String?{
        didSet{
            self.backgroundColor = UIColor.blackColor()
            SGCustomStyleUtils.applyCustomStyle(self, style: self.customStyle)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SGCustomStyleUtils.applyCustomStyle(self, style: self.customStyle)
    }
}
