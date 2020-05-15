//
//  Music.swift
//  3rd Seminar
//
//  Created by 이지윤 on 2020/05/09.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

// Music 모델
struct Music {
    
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named: title)
        self.musicTitle = coverName
        self.singer = singer
    }
    
}
