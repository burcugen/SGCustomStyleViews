//
//  SGCustomStyleUtils.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 02/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

class SGCustomStyleUtils{
    
    static func applyCustomStyle(control : UIView, style : String?){
        
        if let styleKey = style{
            let styleInfo = CustomStyleDefinitions.sharedInstance.getCustomStyleInfo(styleKey) as [String:Any]
            
            if let button = control as? UIButton{
                SGCustomStyleUtils.appleMTButtonCustomStyle(button, styleInfo: styleInfo)
            }else if let label = control as? UILabel{
                SGCustomStyleUtils.appleMTLabelCustomStyle(label, styleInfo: styleInfo)
            }else if let view = control as? UIImageView{
                SGCustomStyleUtils.appleMTImageViewCustomStyle(view, styleInfo: styleInfo)
            }else if let view = control as? UIView{
                SGCustomStyleUtils.appleMTViewCustomStyle(view, styleInfo: styleInfo)
            }
        }
    }
    
    static func appleMTButtonCustomStyle(button : UIButton, styleInfo : [String:Any]){

        if let titleColor = styleInfo[SGCustomStyleKeyConstants.kTextColor] as? UIColor{
            button.setTitleColor(titleColor, forState: .Normal)
        }
        
        if let font = styleInfo[SGCustomStyleKeyConstants.kTextFont] as? UIFont{
            button.titleLabel?.font = font
        }
        
        if let backgroundImages :CustomBackgroundImageStyle = styleInfo[SGCustomStyleKeyConstants.kBackgroundImages] as? CustomBackgroundImageStyle{
            button.setBackgroundImage(backgroundImages.defaultImage, forState: .Normal)
            button.setBackgroundImage(backgroundImages.selectedImage, forState: .Selected)
        }
        
        if let titleColor = styleInfo[SGCustomStyleKeyConstants.kTextColor] as? UIColor{
            button.setTitleColor(titleColor, forState: .Normal)
        }
        
        if let bgColor = styleInfo[SGCustomStyleKeyConstants.kBackgroundColor] as? UIColor{
            button.backgroundColor = bgColor
        }
        
        if let borderColor = styleInfo[SGCustomStyleKeyConstants.kBorderColor] as? UIColor{
            button.layer.borderColor = borderColor.CGColor
        }
        
        if let borderWidth = styleInfo[SGCustomStyleKeyConstants.kBorderWidth] as? NSNumber{
            button.layer.borderWidth = CGFloat(borderWidth.floatValue)
        }
       
        if let cornerRadius = styleInfo[SGCustomStyleKeyConstants.kCornerRadius] as? NSNumber{
            button.layer.cornerRadius = CGFloat(cornerRadius.floatValue)
            button.layer.masksToBounds =  CGFloat(cornerRadius.floatValue) > 0
        }
    }
    
    static func appleMTLabelCustomStyle(label : UILabel, styleInfo : [String:Any]){
        label.textColor = styleInfo[SGCustomStyleKeyConstants.kTextColor] as? UIColor ?? UIColor.whiteColor()
        label.font = styleInfo[SGCustomStyleKeyConstants.kTextFont] as? UIFont ?? UIFont.systemFontOfSize(10.0)
        label.textAlignment = styleInfo[SGCustomStyleKeyConstants.ktextAlignment] as? NSTextAlignment ?? NSTextAlignment.Left
    }
    
    static func appleMTViewCustomStyle(view : UIView, styleInfo : [String:Any]){
        view.backgroundColor = styleInfo[SGCustomStyleKeyConstants.kBackgroundColor] as? UIColor ?? UIColor.whiteColor()
    }
    
    static func appleMTImageViewCustomStyle(imageView : UIImageView, styleInfo : [String:Any]){
        self.appleMTViewCustomStyle(imageView, styleInfo: styleInfo)
        
        if let backgroundImageName = styleInfo[SGCustomStyleKeyConstants.kBackgroundImage] as? String{
            imageView.image = UIImage.init(named: backgroundImageName)
        }
    }
    
}