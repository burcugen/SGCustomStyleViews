//
//  MTCheckboxButton.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 01/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

@IBDesignable class SGCheckboxButton: SGButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        addTarget(self, action: #selector(SGCheckboxButton.didTap), forControlEvents: .TouchUpInside)
    }
    

    func didTap(){
        self.selected = !self.selected
        sendActionsForControlEvents(.ValueChanged)
    }

}
