//
//  FriendsTableViewCell.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/10.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    static let identifier: String = "FriendsCell"

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusMessageLabel: UILabel!
    
    @IBOutlet weak var profileBtn: UIButton!
    
    var delegate: ButtonDelegate?
    var indexPath: IndexPath?
    
    @IBAction func setProfile(_ sender: Any) {
        delegate?.onClickCellButton(in: indexPath!.row)
    }
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func set(_ friendsList: FriendsData) {
        profileImage.image = friendsList.profileImg
        nameLabel.text = friendsList.name
        statusMessageLabel.text = friendsList.statusMessage
    }
}

protocol ButtonDelegate {
    func onClickCellButton(in index: Int)
    }







