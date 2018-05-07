//
//  SecondViewController.swift
//  SeeU
//
//  Created by Thomas Fouan on 03/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myTeamCard: UIStackView!
    
    let startColor: UIColor = UIColor(displayP3Red: 23.0/255, green: 222.0/255, blue: 204.0/255, alpha: 1.0)
    let endColor: UIColor = UIColor(displayP3Red: 46.0/255, green: 104.0/255, blue: 225.0/255, alpha: 1.0)
    let gradient: CAGradientLayer = CAGradientLayer()
    
    func initGradient() {
        gradient.frame = myTeamCard.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.cornerRadius = 6.0;
        
        myTeamCard.layer.insertSublayer(self.gradient, at: 0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // initGradient()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

