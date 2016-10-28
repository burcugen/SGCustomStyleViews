//
//  SGSGCustomStyle.swift
//  SGSGCustomStyleViews
//
//  Created by Burcu Geneci on 28/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

struct BackgroundImageForState{
    var backgroundImage : UIImage?
    var state : UIControlState?
}

public class SGCustomStyle{
    var textFont : UIFont?
    var textColor : UIColor?
    var textAlignment : NSTextAlignment?
    
    var backgroundColor : UIColor?
    var highlightedBackgroundColor : UIColor?
    var defaultBackgroundColor : UIColor?
    
    var backgroundImage : UIImage?
    
    var cornerRadius : CGFloat?
    var borderWidth : CGFloat?
    var borderColor : UIColor?
    
    var contentEdgeInsets:UIEdgeInsets?
    var titleEdgeInsets:UIEdgeInsets?
    var imageEdgeInsets:UIEdgeInsets?
    
    var contentHorizontalAlignment : UIControlContentHorizontalAlignment?
    var contentVerticalAlignment : UIControlContentVerticalAlignment?
    
    var backgroundImagesForStates: [BackgroundImageForState]?

    func addTextFont(font : UIFont)->SGCustomStyle{
        self.textFont = font
        return self
    }
    
    func addTextColor(color : UIColor)->SGCustomStyle{
        self.textColor = color
        return self
    }
    
    func addTextAlignment(textAlignment : NSTextAlignment)->SGCustomStyle{
        self.textAlignment = textAlignment
        return self
    }
    
    func addBackgroundColor(backgroundColor : UIColor)->SGCustomStyle{
        self.backgroundColor = backgroundColor
        return self
    }
    
    func addHighlightedBackgroundColor(hBackgroundColor : UIColor)->SGCustomStyle{
        self.highlightedBackgroundColor = hBackgroundColor
        return self
    }
    
    func addDefaultBackgroundColor(dBackgroundColor : UIColor)->SGCustomStyle{
        self.defaultBackgroundColor = dBackgroundColor
        return self
    }
    
    func addBackgroundImage(backgroundImage : UIImage?, forState: UIControlState? = .Normal)->SGCustomStyle{
        self.backgroundImagesForStates?.append(BackgroundImageForState.init(backgroundImage: backgroundImage, state: forState))
        return self
    }
    
    func addCornerRadius(cRadius : CGFloat)->SGCustomStyle{
        self.cornerRadius = cRadius
        return self
    }
    
    func addBorderWidth(borderWidth : CGFloat)->SGCustomStyle{
        self.borderWidth = borderWidth
        return self
    }
    
    func addBorderColor(borderColor : UIColor)->SGCustomStyle{
        self.borderColor = borderColor
        return self
    }
    func addContentEdgeInsets(edgeInsets : UIEdgeInsets)->SGCustomStyle{
        self.contentEdgeInsets = edgeInsets
        return self
    }
    
    func addTitleEdgeInsets(edgeInsets : UIEdgeInsets)->SGCustomStyle{
        self.titleEdgeInsets = edgeInsets
        return self
    }
    
    func addImageEgdeInsets(edgeInsets : UIEdgeInsets)->SGCustomStyle{
        self.imageEdgeInsets = edgeInsets
        return self
    }
    
    func addContentHorizontalAlignment(alignment : UIControlContentHorizontalAlignment)->SGCustomStyle{
        self.contentHorizontalAlignment = alignment
        return self
    }
    
    func addContentVerticalAlignment(alignment : UIControlContentVerticalAlignment)->SGCustomStyle{
        self.contentVerticalAlignment = alignment
        return self
    }
    
}
