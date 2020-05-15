//
//  FriendsList.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/14.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

struct FriendList {
    var profile: String
    var name: String
    var statusMessage: String
    
    init(profile: String, name: String, statusMessage: String) {
        self.profile = profile
        self.name = name
        self.statusMessage = statusMessage
        
    }
    
}
