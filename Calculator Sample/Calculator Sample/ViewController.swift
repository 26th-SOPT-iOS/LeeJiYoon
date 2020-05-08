//
//  ViewController.swift
//  Calculator Sample
//
//  Created by 이지윤 on 2020/04/26.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    
    
    func setLayout(){
        Buttons.forEach({
            $0.layer.cornerRadius = $0.layer.frame.size.width/2
        })

        // Do any additional setup after loading the view.
    }




}
