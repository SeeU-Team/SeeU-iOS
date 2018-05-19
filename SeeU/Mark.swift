//
//  Mark.swift
//  SeeU
//
//  Created by Thomas Fouan on 19/05/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import Foundation
import UIKit

class Mark {
    static let MAX_MARK = 5
    
    static func setDisplayedText(view: UILabel, mark: Int) {
        var result: String = ""
        
        for index in 0..<MAX_MARK {
            if index < mark {
                result += "★"
            } else {
                result += "☆"
            }
        }
        
        view.text = result
    }
}
