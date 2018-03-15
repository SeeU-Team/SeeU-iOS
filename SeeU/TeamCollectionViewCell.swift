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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
