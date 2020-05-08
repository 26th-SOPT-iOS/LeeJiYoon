//
//  SignUpViewController.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/08.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var NameView: UIView!
    @IBOutlet weak var EmailView: UIView!
    @IBOutlet weak var PasswordView: UIView!
    @IBOutlet weak var SignUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameView.layer.cornerRadius = 22
        EmailView.layer.cornerRadius = 22
        PasswordView.layer.cornerRadius = 22
        SignUpButton.layer.cornerRadius = 24
        
        NameView.layer.masksToBounds = true
        EmailView.layer.masksToBounds = true
        PasswordView.layer.masksToBounds = true
        SignUpButton.layer.masksToBounds = true

        // Do any additional setup after loading the view.
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
