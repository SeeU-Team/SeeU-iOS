//
//  Member.swift
//  SeeU
//
//  Created by Thomas Fouan on 16/05/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import Foundation

class Member {
    static let DEBUG_URL: String = "https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/22365631_1924906760859051_4812781837110089872_n.jpg?oh=a27a7d0053306572e7e485b647db99d4&oe=5B3A50DA"
    
    var name: String = ""
    var pictureUrl: String = ""
    var mark: Int = 0
    
    init() {
    }

    static func debugMember(index: Int) -> Member {
        let member: Member = Member()
        member.name = "Member \(index)"
        member.pictureUrl = Member.DEBUG_URL
        member.mark = index%6
        
        return member
    }
}
