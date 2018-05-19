//
//  MessagesTeamCollectionViewCell.swift
//  SeeU
//
//  Created by Thomas Fouan on 11/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import MaterialComponents

class TeamCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var tags: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var teamUpButton: UIButton!
    @IBOutlet weak var picture: UIView!
    @IBOutlet weak var memberPicture1: UIImageView!
    @IBOutlet weak var memberPicture2: UIImageView!
    @IBOutlet weak var memberPicture3: UIImageView!
    @IBOutlet weak var memberPicture4: UIImageView!
    @IBOutlet weak var memberPicture5: UIImageView!
    @IBOutlet weak var extraMembers: UILabel!
    @IBOutlet weak var genderIndex: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Init gradient for teamUp button
        let gradient = GradientUtils.getDefaultGradient(bounds: teamUpButton.bounds, cornerRadius: 6.0)
        teamUpButton.layer.insertSublayer(gradient, at: 0)
        
//        DOES NOT WORK FOR NOW : Sublayer on UILabel hide the text...
//        let gradientExtraMember = GradientUtils.getDefaultGradient(bounds: extraMembers.bounds, cornerRadius: 16.0)
//        extraMembers.layer.insertSublayer(gradientExtraMember, at: 0)
    }
    
    override func layoutSubviews() {
        setTeamPicture()
        setMemberPictures()
        
        let genderIndexGradient = GradientUtils.getGenderIndexGradient(bounds: genderIndex.bounds, middleLocation: 0.25)
        genderIndex.layer.insertSublayer(genderIndexGradient, at: 0)
    }
    
    func setTeamPicture() {
        // TODO: make hhtp request to fetch the url
        ImageUtils.downloadAndSetImageAsBackground(
            url: Team.DEBUG_URL,
            cornerRadius: 8.0,
            view: picture)
    }
    
    func setMemberPictures() {
        ImageUtils.downloadAndSetImage(url: Member.DEBUG_URL, cornerRadius: 16, imageView: memberPicture1)
        ImageUtils.downloadAndSetImage(url: Member.DEBUG_URL, cornerRadius: 16, imageView: memberPicture2)
        ImageUtils.downloadAndSetImage(url: Member.DEBUG_URL, cornerRadius: 16, imageView: memberPicture3)
        ImageUtils.downloadAndSetImage(url: Member.DEBUG_URL, cornerRadius: 16, imageView: memberPicture4)
        ImageUtils.downloadAndSetImage(url: Member.DEBUG_URL, cornerRadius: 16, imageView: memberPicture5)
        
        extraMembers.text = "+4"
        extraMembers.layer.cornerRadius = 16
        extraMembers.layer.masksToBounds = true
    }
}
