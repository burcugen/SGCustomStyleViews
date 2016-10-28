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
                SGCustomStyleUtils.applyButtonCustomStyle(button, styleInfo: styleInfo)
            }else if let label = control as? UILabel{
                SGCustomStyleUtils.applyLabelCustomStyle(label, styleInfo: styleInfo)
            }else if let view = control as? UIImageView{
                SGCustomStyleUtils.applyImageViewCustomStyle(view, styleInfo: styleInfo)
            }else if let view = control as? UIView{
                SGCustomStyleUtils.applyViewCustomStyle(view, styleInfo: styleInfo)
            }
        }
    }
    
    static func applyButtonCustomStyle(button : UIButton, styleInfo : [String:Any]){
        
        let customStyle = styleInfo[SGCustomStyleKeyConstants.kCustomStyle] as? SGCustomStyle
        if customStyle != nil{
            if let titleColor = customStyle?.textColor {
                button.setTitleColor(titleColor, forState: .Normal)
            }
            
            if let font = customStyle?.textFont{
                button.titleLabel?.font = font
            }
            
            if let backgroundImages = customStyle!.backgroundImagesForStates{
                for i in 0 ..< backgroundImages.count{
                    let backgrndImageForState = backgroundImages[i]
                    button.setBackgroundImage(backgrndImageForState.backgroundImage, forState: backgrndImageForState.state!)
                }
            }

            
            if let bgColor = customStyle?.backgroundColor{
                button.backgroundColor = bgColor
            }
            
            if let borderColor = customStyle?.borderColor{
                button.layer.borderColor = borderColor.CGColor
            }
            
            if let defBgColor = customStyle?.defaultBackgroundColor{
                button.setBackgroundImage(UIImage.fromColor(defBgColor), forState: UIControlState.Normal)
            }
            
            if let borderWidth =  customStyle?.borderWidth{
                button.layer.borderWidth = borderWidth
            }
            
            if let cornerRadius = customStyle?.cornerRadius{
                button.layer.cornerRadius = cornerRadius
                button.layer.masksToBounds =  cornerRadius > 0
            }
            
            if let hAlignment = customStyle?.contentHorizontalAlignment{
                button.contentHorizontalAlignment = hAlignment
            }
            
            if let vAlignment = customStyle?.contentVerticalAlignment{
                button.contentVerticalAlignment = vAlignment
            }
            
            if let tEdgeInsets = customStyle?.titleEdgeInsets{
                button.titleEdgeInsets = tEdgeInsets
            }
            
            if let cEdgeInsets = customStyle?.contentEdgeInsets{
                button.contentEdgeInsets = cEdgeInsets
            }
            if let iEdgeInsets = customStyle?.imageEdgeInsets{
                button.imageEdgeInsets = iEdgeInsets
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
        
        if let defBgColor = styleInfo[SGCustomStyleKeyConstants.kDefaultBackgroundColor] as? UIColor{
            button.setBackgroundImage(UIImage.fromColor(defBgColor), forState: UIControlState.Normal)
        }
        
        if let borderWidth = styleInfo[SGCustomStyleKeyConstants.kBorderWidth] as? NSNumber{
            button.layer.borderWidth = CGFloat(borderWidth.floatValue)
        }
       
        if let cornerRadius = styleInfo[SGCustomStyleKeyConstants.kCornerRadius] as? NSNumber{
            button.layer.cornerRadius = CGFloat(cornerRadius.floatValue)
            button.layer.masksToBounds =  CGFloat(cornerRadius.floatValue) > 0
        }
    }
    
    static func applyLabelCustomStyle(label : UILabel, styleInfo : [String:Any]){
        let customStyle = styleInfo[SGCustomStyleKeyConstants.kCustomStyle] as? SGCustomStyle

        if(customStyle != nil){
            if let textColor = customStyle?.textColor{
                label.textColor = textColor
            }
            
            if let textFont = customStyle?.textFont{
                label.font = textFont
            }
            
            if let textAlignment = customStyle?.textAlignment{
                label.textAlignment = textAlignment
            }
        }
    }
    
    static func applyViewCustomStyle(view : UIView, styleInfo : [String:Any]){
        let customStyle = styleInfo[SGCustomStyleKeyConstants.kCustomStyle] as? SGCustomStyle
        
        if(customStyle != nil){
            
            if let bgColor = customStyle?.backgroundColor{
                view.backgroundColor = bgColor
            }
        }
    }
    
    static func applyImageViewCustomStyle(imageView : UIImageView, styleInfo : [String:Any]){
        self.applyViewCustomStyle(imageView, styleInfo: styleInfo)

        let customStyle = styleInfo[SGCustomStyleKeyConstants.kCustomStyle] as? SGCustomStyle

        if(customStyle != nil){
            
            if let backgroundImages = customStyle!.backgroundImagesForStates{
                imageView.image = backgroundImages[0].backgroundImage
            }
        }

    }
    
}