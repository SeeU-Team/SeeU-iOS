//
//  Team.swift
//  SeeU
//
//  Created by Thomas Fouan on 16/05/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import Foundation

class Team {
    public static let DEBUG_URL: String = "https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/28796203_2100578413291884_3128132353430932217_n.jpg?oh=cf890e20f692253214d595fd266fd73b&oe=5B3BCC27"
    
    var name: String = ""
    var pictureUrl: String = ""
    var tags: String = ""
    var mark: Int = 0
    var members: [Member] = []
    
    init() {
    }
    
    static func debugTeam(index: Int) -> Team {
        let team: Team = Team()
        team.name = "Team \(index)"
        team.pictureUrl = Team.DEBUG_URL
        team.tags = "#fiesta#noche#caliente"
        team.mark = index%6
        
        for i in 0..<index {
            team.members.append(Member.debugMember(index: i))
        }
        
        return team
    }
}
