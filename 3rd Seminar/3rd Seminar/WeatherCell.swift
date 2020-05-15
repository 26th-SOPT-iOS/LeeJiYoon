//
//  WeatherCell.swift
//  3rd Seminar
//
//  Created by 이지윤 on 2020/05/09.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    static let identifier: String = "WeatherCell"

    @IBOutlet weak var WeatherImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDateInformation(weatherImageName: String, date: String, subTitle: String) {
        WeatherImageView.image = UIImage(named: weatherImageName)
        dateLabel.text = date
        subtitleLabel.text = subTitle
    }

}
