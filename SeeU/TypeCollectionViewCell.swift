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
    
    let startColor: UIColor = UIColor(displayP3Red: 23.0/255, green: 222.0/255, blue: 204.0/255, alpha: 1.0)
    let endColor: UIColor = UIColor(displayP3Red: 46.0/255, green: 104.0/255, blue: 225.0/255, alpha: 1.0)
    let gradient: CAGradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initGradient()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initGradient()
    }
    
    func initGradient() {
        gradient.frame = self.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                //self.backgroundColor = UIColor.white
                self.layer.insertSublayer(gradient, at: 0)
            } else {
                self.backgroundColor = UIColor(displayP3Red: 200.0/255, green: 200.0/255, blue: 200.0/255, alpha: 1.0)
                gradient.removeFromSuperlayer()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
