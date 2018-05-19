//
// Created by Thomas Fouan on 19/05/2018.
// Copyright (c) 2018 SeeU. All rights reserved.
//

import Foundation
import UIKit

class MessagesMemberCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var mark: UILabel!

    var member: Member!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setCardView()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        ImageUtils.downloadAndSetImage(url: member.pictureUrl, cornerRadius: 50.0, imageView: picture)
        name.text = member.name
        Mark.setDisplayedText(view: mark, mark: member.mark)
    }
}
