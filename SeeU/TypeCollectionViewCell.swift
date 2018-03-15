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
        
        gradient.frame = self.bounds
        gradient.colors = [UIColor.green.cgColor, UIColor.blue.cgColor]
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        gradient.frame = self.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                //self.backgroundColor = UIColor.white
                /*
                gradient.startPoint = CGPoint(x: 0, y: 0)
                gradient.endPoint = CGPoint(x: self.frame.size.width, y: 0)
 */
                
                self.layer.insertSublayer(gradient, at: 0)
            } else {
                self.backgroundColor = UIColor.gray
                print("before remove sublayer")
                gradient.removeFromSuperlayer()
                print("after remove sublayer")
                /*
                if (self.layer.sublayers != nil && self.layer.sublayers!.count > 0) {
                    for var sub in self.layer.sublayers! {
                        if sub != nil {
                            print("before remove sublayer")
                            sub.removeFromSuperlayer()
                        }
                    }
                }
                 */
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
