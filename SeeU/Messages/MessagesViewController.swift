//
//  SecondViewController.swift
//  SeeU
//
//  Created by Thomas Fouan on 03/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var teamCard: UIView!
    @IBOutlet weak var teamCardUp: UIView!
    @IBOutlet weak var teamCardPicture: UIImageView!
    @IBOutlet weak var teamCardName: UILabel!
    @IBOutlet weak var teamCardMark: UILabel!
    @IBOutlet weak var teamCardNotReadMessages: UILabel!
    
    @IBOutlet weak var memberCollectionView: UICollectionView!
    @IBOutlet weak var teamCollectionView: UICollectionView!
    
    @IBAction func editAction() {
        // TODO: launch edit team profile screen
    }
    
    var myTeam: Team!
    var members: [Member] = []
    var teams: [Team] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        memberCollectionView.delegate = self
        memberCollectionView.dataSource = self
        
        teamCollectionView.delegate = self
        teamCollectionView.dataSource = self
        
        loadMyTeam()
        loadMembers()
        loadTeams()
    }
    
    override func viewDidLayoutSubviews() {
        teamCard.setCardView()
        initTeamCardUpGradient()
        
        ImageUtils.downloadAndSetImage(url: myTeam.pictureUrl, cornerRadius: 10.0, imageView: teamCardPicture)
        teamCardName.text = myTeam.name
        Mark.setDisplayedText(view: teamCardMark, mark: myTeam.mark)
        teamCardNotReadMessages.text = "\(21) messages non lus"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initTeamCardUpGradient() {
        let gradient = GradientUtils.getDefaultGradient(bounds: teamCardUp.bounds, cornerRadius: 6.0)
        teamCardUp.layer.insertSublayer(gradient, at: 0)
    }
    
    func loadMyTeam() {
        myTeam = Team.debugTeam(index: 1)
    }
    
    func loadMembers() {
        members.removeAll()
        for index in 0...10 {
            members.append(Member.debugMember(index: index))
        }
        
        memberCollectionView.reloadData()
    }

    func loadTeams() {
        teams.removeAll()
        for index in 0...10 {
            teams.append(Team.debugTeam(index: index))
        }
        
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
            let cell: MessagesMemberCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "messagesMemberCell", for: indexPath) as! MessagesMemberCollectionViewCell
            
            cell.member = members[indexPath.row]
            
            return cell
        } else {
            let cell: MessagesTeamCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "messagesTeamCell", for: indexPath) as! MessagesTeamCollectionViewCell
            
            cell.team = teams[indexPath.row]
            
            return cell
        }
    }

}

