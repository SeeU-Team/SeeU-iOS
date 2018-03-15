//
//  FirstViewController.swift
//  SeeU
//
//  Created by Thomas Fouan on 03/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit

class TeamWallViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var typeCollection: UICollectionView!
    @IBOutlet weak var teamCollection: UICollectionView!
    
    var teams: [String] = []
    var types: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in 0 ..< 10 {
            teams.append("team " + "\(i)")
        }
        
        types.append("Popular")
        types.append("Barbecue")
        types.append("Dancing")
        types.append("Hangover")
        
        self.teamCollection.delegate = self;
        self.teamCollection.dataSource = self;
        
        self.typeCollection.delegate = self;
        self.typeCollection.dataSource = self;
        
        self.teamCollection.reloadData()
        self.typeCollection.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == typeCollection {
            return types.count
        }
        return teams.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == typeCollection {
            let cell: TypeCollectionViewCell = typeCollection.dequeueReusableCell(withReuseIdentifier: "typeCollectionViewCell", for: indexPath) as! TypeCollectionViewCell
            
            cell.name.text = types[indexPath.row]
            
            cell.layer.masksToBounds = true;
            cell.layer.cornerRadius = 6;
            
            return cell;
        } else {
            let cell: TeamCollectionViewCell = teamCollection.dequeueReusableCell(withReuseIdentifier: "teamCollectionViewCell", for: indexPath) as! TeamCollectionViewCell
            
            //cell.textView?.text = teams[indexPath.row]
            
            cell.layer.masksToBounds = true;
            cell.layer.cornerRadius = 6;
            
            return cell;
        }
    }
    
}

