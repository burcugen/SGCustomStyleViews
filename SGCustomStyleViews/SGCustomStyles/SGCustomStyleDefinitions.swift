//
//  CustomStyleDefinitions.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 02/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

struct SGCustomStyleKeyConstants {
    static let kTextFont = "kTextFont"
    static let kTextColor = "kTextColor"
    static let ktextAlignment = "ktextAlignment"

    static let kBackgroundColor = "kBackgroundColor"
    static let kHighligthedBackgroundColor = "kHighligthedBackgroundColor"
    static let kDefaultBackgroundColor = "kDefaultBackgroundColor"
    
    static let kBackgroundImages = "kBackgroundImages"
    static let kBackgroundImage = "kBackgroundImage"

    static let kCornerRadius = "kCornerRadius"
    static let kBorderWidth = "kBorderWidth"
    static let kBorderColor = "kBorderColor"
    
}

public class CustomStyleDefinitions {
    
    static let sharedInstance = CustomStyleDefinitions()
    
    private init() {
        
    }
    
    private var dictionary : [String : [String : Any]] = [
        
        SGCustomStyles.CheckboxButton.getStyleName():
            [SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(17.0),
                SGCustomStyleKeyConstants.kTextColor : UIColor.sgWhiteColor(),
                SGCustomStyleKeyConstants.kBackgroundImages :
                    CustomBackgroundImageStyle(defaultImg : "IcCheckButton", selectedImg : "IcCheckButtonSelected")],
        
        SGCustomStyles.RadioButton.getStyleName():
            [SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(17.0),
                SGCustomStyleKeyConstants.kTextColor : UIColor.sgWhiteColor(),
                SGCustomStyleKeyConstants.kBackgroundImages :
                    CustomBackgroundImageStyle(defaultImg : "RadioButtonDefault", selectedImg : "RadioButton")],
        
        SGCustomStyles.FormControlBackgroundView.getStyleName():
            [   SGCustomStyleKeyConstants.kBackgroundColor: UIColor.clearColor()],
      
        SGCustomStyles.FormButtonWithoutBorder1.getStyleName():
            [   SGCustomStyleKeyConstants.kBackgroundColor: UIColor.clearColor(),
                SGCustomStyleKeyConstants.kTextColor: UIColor.sgBlueColor(),
                SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(13.0)],
       
        SGCustomStyles.SelectionButtonWithBorder1.getStyleName():
            [   SGCustomStyleKeyConstants.kCornerRadius: 3.0,
                SGCustomStyleKeyConstants.kBorderWidth : 1.0,
                SGCustomStyleKeyConstants.kBorderColor : UIColor.mlightGrayColor(),
                SGCustomStyleKeyConstants.kTextColor : UIColor.mlightGrayColor(),
                SGCustomStyleKeyConstants.kBackgroundColor: UIColor.clearColor(),
                SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(12.0)],
        
        SGCustomStyles.SelectionButtonWithBorder2.getStyleName():
            [   SGCustomStyleKeyConstants.kCornerRadius: 2.0,
                SGCustomStyleKeyConstants.kBorderWidth : 2.0,
                SGCustomStyleKeyConstants.kBorderColor : UIColor.sgRedColor(),
                SGCustomStyleKeyConstants.kTextColor : UIColor.sgRedColor(),
                SGCustomStyleKeyConstants.kBackgroundColor: UIColor.clearColor(),
                SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(15.0)],
        
        SGCustomStyles.NoDataViewLabel.getStyleName():
            [   SGCustomStyleKeyConstants.ktextAlignment: NSTextAlignment.Center,
                SGCustomStyleKeyConstants.kTextColor : UIColor.sgBlackColor(),
                SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(18.0)],
        
        SGCustomStyles.BackgroundViewPurple.getStyleName():
            [   SGCustomStyleKeyConstants.kBackgroundImage: "MainBackground"],
        
        SGCustomStyles.BackgroundViewGrey.getStyleName():
            [   SGCustomStyleKeyConstants.kBackgroundImage: "MainBackgroundGrey"],
        
        SGCustomStyles.WhiteLabel1.getStyleName():
            [   SGCustomStyleKeyConstants.kTextColor : UIColor.whiteColor(),
                SGCustomStyleKeyConstants.ktextAlignment: NSTextAlignment.Center,
                SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(18.0)],
        
        SGCustomStyles.GreenRoundedButton.getStyleName():
            [   SGCustomStyleKeyConstants.kCornerRadius : 15.0,
                SGCustomStyleKeyConstants.kDefaultBackgroundColor: UIColor.sgGreenColor(),
                SGCustomStyleKeyConstants.kHighligthedBackgroundColor: UIColor.whiteColor(),
                SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(18.0),
                SGCustomStyleKeyConstants.kTextColor : UIColor.whiteColor()],
        
        SGCustomStyles.GreenRightLabel1.getStyleName():
            [   SGCustomStyleKeyConstants.kTextColor : UIColor.sgGreenColor(),
                SGCustomStyleKeyConstants.ktextAlignment: NSTextAlignment.Right,
                SGCustomStyleKeyConstants.kTextFont: Fonts.Default(.Normal).getFont(12.0)]

        ]
    
    public func getCustomStyleInfo(key: String) -> [String:Any] {
        return dictionary[key]!
    }
    
}