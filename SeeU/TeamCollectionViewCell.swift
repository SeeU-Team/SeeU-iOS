//
//  TeamCollectionViewCell.swift
//  SeeU
//
//  Created by Thomas Fouan on 11/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit

class TeamCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var tags: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var teamUpButton: UIButton!
    
    let startColor: UIColor = UIColor(displayP3Red: 23.0/255, green: 222.0/255, blue: 204.0/255, alpha: 1.0)
    let endColor: UIColor = UIColor(displayP3Red: 46.0/255, green: 104.0/255, blue: 225.0/255, alpha: 1.0)
    let gradient: CAGradientLayer = CAGradientLayer()
    
    func initGradient() {
        gradient.frame = teamUpButton.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.cornerRadius = 6.0;
        
        teamUpButton.layer.insertSublayer(self.gradient, at: 0)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initGradient()
        teamUpButton.layer.cornerRadius = 6.0;
    }
}
