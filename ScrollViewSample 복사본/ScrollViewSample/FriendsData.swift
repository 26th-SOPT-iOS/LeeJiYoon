//
//  FriendsData.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/10.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

struct FriendsData {
    
    var profileImg: UIImage?
    var name: String?
    var statusMessage: String?
    
    init(profile: String, name: String, statusMessage: String) {
        self.profileImg = UIImage(named: profile)
        self.name = name
        self.statusMessage = statusMessage
    }
    
}


