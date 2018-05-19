//
//  SecondViewController.swift
//  SeeU
//
//  Created by Thomas Fouan on 03/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var teamCardUp: UIView!
    @IBOutlet weak var memberCollectionView: UICollectionView!
    @IBOutlet weak var teamCollectionView: UICollectionView!
    
    let startColor: UIColor = UIColor(displayP3Red: 23.0/255, green: 222.0/255, blue: 204.0/255, alpha: 1.0)
    let endColor: UIColor = UIColor(displayP3Red: 46.0/255, green: 104.0/255, blue: 225.0/255, alpha: 1.0)
    let gradient: CAGradientLayer = CAGradientLayer()
    
    var members: [String] = []
    var teams: [String] = []
    
    func initGradient() {
        gradient.frame = teamCardUp.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.cornerRadius = 6.0
        
        teamCardUp.layer.insertSublayer(self.gradient, at: 0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        memberCollectionView.delegate = self
        memberCollectionView.dataSource = self
        
        teamCollectionView.delegate = self
        teamCollectionView.dataSource = self
        
        loadMembers()
        loadTeams()
    }
    
    override func viewDidLayoutSubviews() {
        initGradient()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadMembers() {
        members.removeAll()
        members.append("Member 1")
        members.append("Member 2")
        members.append("Member 3")
        members.append("Member 4")
        
        memberCollectionView.reloadData()
    }

    func loadTeams() {
        teams.removeAll()
        teams.append("Team 1")
        teams.append("Team 2")
        teams.append("Team 3")
        teams.append("Team 4")
        
        teamCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == memberCollectionView {
            return members.count
        }
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == memberCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memberCollectionViewCell", for: indexPath)
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "teamCollectionViewCell", for: indexPath)
            return cell
        }
    }

}

