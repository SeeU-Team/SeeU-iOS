//
//  CardView.swift
//  SeeU
//
//  Created by Thomas Fouan on 19/05/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setCardView() {
        self.layer.cornerRadius = 8.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 5.0
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width:1, height: 1)
        self.layer.masksToBounds = false
    }
}
