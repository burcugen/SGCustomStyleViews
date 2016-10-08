//
//  UIColor+Extensions.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 02/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//


import Foundation
import UIKit

//MARK: - Color

struct Color {
    
    static let sgBlackColor = "#45464b"
    static let sgYellowColor = "#FFCA6F"
    static let sgBlueColor = "#758ddd"
    static let sgRedColor = "#AB0000"
    static let sgGreenColor = "#2ab867"
    static let sgWhiteColor = "#FFFFFF"
    static let sgIndicatorColor = "#756879"
    static let sgPurpleColor = "#49394F"
    static let sgGray = "#757575"
    static let sgLightGray = "#979797"

    static let BlackColor = "#000000"
    static let HeaderColor = "#FFFFFF"
    static let NavigationBarColor = "#49394F"
    static let NavigationBarTintColor = "#49394F"
    static let TintColor = "#FFFFFF"
    static let PageControlBackgroundColor = "#FFFFFF"
    static let CurrentPageIndicatorTintColor = "#2AB867"
    static let PageIndicatorTintColor = "#979797"
    static let LabelHeaderColor = "#FFC978"
    static let LabelTextColor = "#FFFFFF"
    
    static let LightGrayColor = "#AAAAAA"
}

//MARK: Color Extensions

extension UIColor {
    
    // Colorsets
    
    class func dialogBlackColor() -> UIColor {
        return UIColor(hexString: Color.BlackColor)
    }
    
    class func sgBlackColor() -> UIColor {
        return UIColor(hexString: Color.sgBlackColor)
    }
    
    class func sgYellowColor() -> UIColor {
        return UIColor(hexString: Color.sgYellowColor)
    }
    
    class func sgBlueColor() -> UIColor {
        return UIColor(hexString: Color.sgBlueColor)
    }
    
    class func sgRedColor() -> UIColor {
        return UIColor(hexString: Color.sgRedColor)
    }
    
    class func sgGreenColor() -> UIColor {
        return UIColor(hexString: Color.sgGreenColor)
    }
    
    class func sgWhiteColor() -> UIColor {
        return UIColor(hexString: Color.sgWhiteColor)
    }
    
    class func sgIndicatorColor() -> UIColor {
        return UIColor(hexString: Color.sgIndicatorColor)
    }
    
    class func sgPurpleColor() -> UIColor {
        return UIColor(hexString: Color.sgPurpleColor)
    }
    
    class func sgGray() -> UIColor {
        return UIColor(hexString: Color.sgGray)
    }
    
    class func sgLightGray() -> UIColor {
        return UIColor(hexString: Color.sgLightGray)
    }
    
    // App specific
    
    class func headerColor() -> UIColor {
        return UIColor(hexString: Color.HeaderColor)
    }
    
    class func navigationBarColor() -> UIColor {
        return UIColor(hexString: Color.NavigationBarColor)
    }
    
    class func navigationBarTintColor() -> UIColor {
        return UIColor(hexString: Color.NavigationBarTintColor)
    }
    
    class func tintColor() -> UIColor {
        return UIColor(hexString: Color.TintColor)
    }
    
    class func currentPageIndicatorTintColor() -> UIColor {
        return UIColor(hexString: Color.CurrentPageIndicatorTintColor)
    }
    
    class func pageIndicatorTintColor() -> UIColor {
        return UIColor(hexString: Color.PageIndicatorTintColor)
    }
    
    class func pageControlBackgroundColor() -> UIColor {
        return UIColor(hexString: Color.PageControlBackgroundColor)
    }
    
    class func labelHeaderColor() -> UIColor {
        return UIColor(hexString: Color.LabelHeaderColor)
    }
    
    class func labelTextColor() -> UIColor {
        return UIColor(hexString: Color.LabelTextColor)
    }
    
    class func mlightGrayColor() -> UIColor {
        return UIColor(hexString: Color.LightGrayColor)
    }

    
    //MARK: Init
  
    convenience init(hexString:String) {
        
        let hexString: NSString = hexString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        let scanner = NSScanner(string: hexString as String)
        
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        
        var color:UInt32 = 0
        scanner.scanHexInt(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:1)
    }
    
    func toHexString() -> String {
        
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        
        return NSString(format:"#%06x", rgb) as String
    }
    
}