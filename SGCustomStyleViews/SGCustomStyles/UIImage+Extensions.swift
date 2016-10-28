//
//  UIImage+Extensions.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 28/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

extension UIImage {
    
    static func fromColor(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        let rect = CGRect(origin: CGPointZero, size: size)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}