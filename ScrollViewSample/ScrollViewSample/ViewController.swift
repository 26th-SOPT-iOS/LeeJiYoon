//
//  ViewController.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/04/30.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var EmailView: UIView!
    @IBOutlet weak var PasswordView: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EmailView.layer.cornerRadius = 22
        EmailView.layer.masksToBounds = true
        PasswordView.layer.cornerRadius = 22
        PasswordView.layer.masksToBounds = true
        LoginButton.layer.cornerRadius = 24
        LoginButton.layer.masksToBounds = true

    
        // Do any additional setup after loading the view.
    }


}

