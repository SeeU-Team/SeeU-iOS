//
//  TypeCollectionViewCell.swift
//  SeeU
//
//  Created by Thomas Fouan on 15/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit

class TypeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name: UILabel!
    
    var gradient: CAGradientLayer? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initGradient()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initGradient()
    }
    
    func initGradient() {
        gradient = GradientUtils.getDefaultGradient(bounds: self.bounds, cornerRadius: 0.0)
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                //self.backgroundColor = UIColor.white
                self.layer.insertSublayer(gradient!, at: 0)
            } else {
                self.backgroundColor = UIColor(displayP3Red: 200.0/255, green: 200.0/255, blue: 200.0/255, alpha: 1.0)
                gradient!.removeFromSuperlayer()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
