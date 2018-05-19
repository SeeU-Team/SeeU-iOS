//
//  GradientUtils.swift
//  SeeU
//
//  Created by Thomas Fouan on 16/05/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import Foundation
import UIKit

class GradientUtils {
    
    static func getDefaultGradient(bounds: CGRect, cornerRadius: Float) -> CAGradientLayer {
        let startColor: UIColor = UIColor(displayP3Red: 23.0/255, green: 222.0/255, blue: 204.0/255, alpha: 1.0)
        let endColor: UIColor = UIColor(displayP3Red: 46.0/255, green: 104.0/255, blue: 225.0/255, alpha: 1.0)
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.frame = bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.cornerRadius = CGFloat(cornerRadius)
        
        return gradient
    }
    
    static func getGenderIndexGradient(bounds: CGRect, middleLocation: Float) -> CAGradientLayer {
        
        let startColor: UIColor = UIColor(displayP3Red: 30.0/255, green: 183.0/255, blue: 211.0/255, alpha: 1.0)
        let middleColor: UIColor = UIColor(displayP3Red: 136.0/255, green: 110.0/255, blue: 123.0/255, alpha: 1.0)
        let endColor: UIColor = UIColor(displayP3Red: 207.0/255, green: 47.0/255, blue: 168.0/255, alpha: 1.0)
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.frame = bounds
        gradient.colors = [startColor.cgColor, middleColor.cgColor, endColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
        gradient.locations = [0.0, NSNumber(value: middleLocation), 1.0]
        gradient.cornerRadius = 4.0
        
        return gradient
    }
}
