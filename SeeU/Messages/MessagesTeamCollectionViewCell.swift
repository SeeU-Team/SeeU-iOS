//
// Created by Thomas Fouan on 19/05/2018.
// Copyright (c) 2018 SeeU. All rights reserved.
//

import Foundation
import UIKit

class MessagesTeamCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var tags: UILabel!
    
    var team: Team!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setCardView()
    }
    
    override func layoutSubviews() {
        name.text = team.name
        tags.text = team.tags
        
        ImageUtils.downloadAndSetImageAsBackground(url: team.pictureUrl, cornerRadius: 6.0, view: self)
    }
}
