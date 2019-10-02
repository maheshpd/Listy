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
        setupParallax()
    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {
        itemImageView.image = image
        DescriptionLbl.text = desc
    }
    
    
    func setupParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageView.addMotionEffect(motionEffectGroup)
    }
}
