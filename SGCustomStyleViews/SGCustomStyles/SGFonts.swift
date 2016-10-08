//
//  SGFonts.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 02/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

enum FontsStyle: String {
    case Normal = ""
    case Regular = "Regular"
    case Bold = "Bold"
    case BoldItalic = "BoldItalic"
    
    /// .Normal | .Bold | .BoldItalic | .CondensedBlack | .CondensedBold | .Italic | .Light | .LightItalic | .Medium | .MediumItalic | .UltraLight | .UltraLightItalic | .Thin | .ThinItalic

}

enum Fonts {
    case Default(FontsStyle)
    case HelveticaNeue(FontsStyle)
    case System(FontsStyle)

    private var default_: Fonts {
        return System(.Normal)
    }
    
    var name: String {
        switch self {
        case .Default:
            return default_.name
        case .HelveticaNeue:
            return "HelveticaNeue"
        case .System:
            return "System"
        }
    }
    
    var style: FontsStyle {
        switch self {
        case .Default(let style):
            return style
        case .HelveticaNeue(let style):
            return style
        case .System(let style):
            return style
        }
    }
    
    func getFont(size: CGFloat) -> UIFont {
        let name = self.name
        let style = self.style.rawValue
        let font = UIFont(name: name + "-" + style, size: size) ?? UIFont(name: name, size: size) ?? UIFont.systemFontOfSize(size)
        return font
    }
}