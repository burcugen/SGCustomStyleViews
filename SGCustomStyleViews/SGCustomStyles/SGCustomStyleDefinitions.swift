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
    
    static let kCustomStyle = "kCustomStyle"
    
}

public class CustomStyleDefinitions {
    
    static let sharedInstance = CustomStyleDefinitions()
    
    private init() {
        
    }
    
    private var dictionary : [String : [String : Any]] = [
        
        SGCustomStyles.NewStyleButton.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addTextFont(Fonts.Default(.Normal).getFont(17.0))
                .addTextColor(UIColor.sgWhiteColor())
                .addBackgroundColor(UIColor.mlightGrayColor())
                .addCornerRadius(2.0)
                .addBorderWidth(1.0)
                .addBorderColor(UIColor.mlightGrayColor())],
        
        SGCustomStyles.CheckboxButton.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addTextFont(Fonts.Default(.Normal).getFont(17.0))
                .addTextColor(UIColor.sgWhiteColor())
                .addBackgroundImage(UIImage.init(named: "IcCheckButton"), forState: .Normal)
                .addBackgroundImage(UIImage.init(named: "IcCheckButtonSelected"), forState: .Selected)],
        
        SGCustomStyles.RadioButton.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addTextFont(Fonts.Default(.Normal).getFont(17.0))
                .addTextColor(UIColor.sgWhiteColor())
                    .addBackgroundImage(UIImage.init(named: "RadioButtonDefault"), forState: .Normal)
                    .addBackgroundImage(UIImage.init(named: "RadioButton"), forState: .Selected)],
        
        SGCustomStyles.FormControlBackgroundView.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addBackgroundColor(UIColor.clearColor())],
        
        SGCustomStyles.FormButtonWithoutBorder1.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addBackgroundColor(UIColor.clearColor())
                    .addTextColor(UIColor.sgBlueColor())
                    .addTextFont(Fonts.Default(.Normal).getFont(13.0))],
        
        SGCustomStyles.SelectionButtonWithBorder1.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addCornerRadius(3.0)
                .addBorderWidth(1.0)
                .addBorderColor( UIColor.mlightGrayColor())
                .addTextColor(UIColor.mlightGrayColor())
                .addBackgroundColor(UIColor.clearColor())
                .addTextFont(Fonts.Default(.Normal).getFont(12.0))],
        
        SGCustomStyles.SelectionButtonWithBorder2.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addCornerRadius(2.0)
                    .addBorderWidth(2.0)
                    .addBorderColor( UIColor.sgRedColor())
                    .addTextColor(UIColor.sgRedColor())
                    .addBackgroundColor(UIColor.clearColor())
                    .addTextFont( Fonts.Default(.Normal).getFont(15.0))],
        
        SGCustomStyles.NoDataViewLabel.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addTextAlignment(NSTextAlignment.Center)
                .addTextColor(UIColor.sgBlackColor())
                .addTextFont(Fonts.Default(.Normal).getFont(18.0))],
        
        SGCustomStyles.BackgroundViewPurple.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addBackgroundImage(UIImage.init(named: "MainBackground"))],
        
        SGCustomStyles.BackgroundViewGrey.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addBackgroundImage(UIImage.init(named: "MainBackgroundGrey"))],
        
        SGCustomStyles.WhiteLabel1.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addTextColor(UIColor.whiteColor())
                .addTextAlignment(NSTextAlignment.Center)
                .addTextFont(Fonts.Default(.Normal).getFont(18.0))],
        
        SGCustomStyles.GreenRoundedButton.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addCornerRadius(15.0)
                .addDefaultBackgroundColor(UIColor.sgGreenColor())
                .addHighlightedBackgroundColor(UIColor.whiteColor())
                .addTextFont(Fonts.Default(.Normal).getFont(18.0))
                .addTextColor(UIColor.whiteColor())],
        
        SGCustomStyles.GreenRightLabel1.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addTextColor(UIColor.sgGreenColor())
                .addTextAlignment(NSTextAlignment.Right)
                .addTextFont(Fonts.Default(.Normal).getFont(12.0))],
        
        SGCustomStyles.SelectionButtonWithBorder3.getStyleName():
            [SGCustomStyleKeyConstants.kCustomStyle:
                SGCustomStyle().addCornerRadius(4.0)
                .addBorderWidth(2.0)
                .addBorderColor(UIColor.mlightGrayColor())
                .addTextColor(UIColor.blackColor())
                .addBackgroundColor(UIColor.clearColor())
                .addTextFont(Fonts.Default(.Regular).getFont(17.0))]

        ]
    
    public func getCustomStyleInfo(key: String) -> [String:Any] {
        return dictionary[key]!
    }
    
    public static func getCustomStyle(key: String)-> SGCustomStyle{
        let styleInfo = CustomStyleDefinitions.sharedInstance.getCustomStyleInfo(key)
        let customStyle = styleInfo[SGCustomStyleKeyConstants.kCustomStyle] as? SGCustomStyle
        return customStyle!
    }
    
}