//
//  MusicCell.swift
//  3rd Seminar
//
//  Created by 이지윤 on 2020/05/09.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class MusicCell: UICollectionViewCell {
    
    static let identifier: String = "MusicCell"
    
    
    @IBOutlet weak var albumImageView: UIImageView!
    
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func set(_ musicInformation: Music) {
        albumImageView.image = musicInformation.albumImg
        titleLabel.text = musicInformation.musicTitle
        singerLabel.text = musicInformation.singer
    }
}

