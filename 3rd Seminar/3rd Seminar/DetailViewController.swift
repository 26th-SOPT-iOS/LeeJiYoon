//
//  DetailViewController.swift
//  3rd Seminar
//
//  Created by 이지윤 on 2020/05/09.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var WeatherImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var imageName: String = ""
    var date: String = ""
    var subTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initView()
    }
    
    private func initView() {
        WeatherImageView.image = UIImage(named: imageName)
        dateLabel.text = date
        subTitleLabel.text = subTitle
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
