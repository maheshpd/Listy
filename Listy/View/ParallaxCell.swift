//
//  ParallaxCell.swift
//  Listy
//
//  Created by Mahesh Prasad on 02/10/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

   @IBOutlet weak  var itemImageView: UIImageView!
    @IBOutlet weak var DescriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {
        itemImageView.image = image
        DescriptionLbl.text = desc
    }
    
    
    func setupParallax() {
        
    }
}
