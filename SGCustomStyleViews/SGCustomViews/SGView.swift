//
//  MTView.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 10/4/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit


@IBDesignable class SGView : UIView{
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