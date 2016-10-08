//
//  MTTableViewCell.swift
//  SGCustomStyleViews
//
//  Created by Burcu Geneci on 01/10/16.
//  Copyright © 2016 Burcu Geneci. All rights reserved.
//

import UIKit

@IBDesignable class SGTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        self.contentView.layoutMargins = UIEdgeInsetsMake(0, 40, 8, 30)
    }

}
