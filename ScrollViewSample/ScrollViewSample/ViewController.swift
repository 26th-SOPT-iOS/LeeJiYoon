//
//  ViewController.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/04/30.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var IDView: UIView!
    @IBOutlet weak var PasswordView: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    @IBOutlet weak var autoLoginSwitch: UISwitch!

    @IBAction func doLogin(_ sender: Any) {
        guard let inputID = idTextField.text
            else {
                return
                
        }
        guard let inputPWD = pwTextField.text
            else{
                return
        }
                if autoLoginSwitch .isOn{
                    let dataSave = UserDefaults.standard
                    dataSave.setValue(inputID, forKey: "savedID")
                    dataSave.setValue(inputPWD, forKey: "savedPWD")
                    
                    UserDefaults.standard.synchronize()
                    
                } else {
                    let dataSave = UserDefaults.standard
                    dataSave.setValue(nil, forKey: "savedID")
                    dataSave.setValue(nil, forKey: "savedPWD")
                    
                    UserDefaults.standard.synchronize()
                    
                    
        }

    
        LoginService.shared.login(id: inputID, pwd: inputPWD) {
            networkResult in
            switch networkResult {
            case .success(let token):
                guard let token = token as? String
                    else {
                        return
                        
                }
                UserDefaults.standard.set(token, forKey: "token")
            guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
                "TabBarController") as? UITabBarController else {
                    return
                    
                }
                tabbarController.modalPresentationStyle = .fullScreen
            self.present(tabbarController, animated: true, completion: nil)
            case .requestErr(let message):
                guard let message = message as? String else { return }
                //  로그인 데이터 잘못 넣으면 alert로 로그인 실패라는 메세지 띄움.
                let alertViewController = UIAlertController(title: "로그인 실패", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
        case .pathErr: print("path")
        case .serverErr: print("serverErr") case .networkFail: print("networkFail") }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true

        IDView.layer.cornerRadius = 22
        IDView.layer.masksToBounds = true
        
        PasswordView.layer.cornerRadius = 22
        PasswordView.layer.masksToBounds = true
        LoginButton.layer.cornerRadius = 24
        LoginButton.layer.masksToBounds = true
        
        autoLoginSwitch.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
    
        // Do any additional setup after loading the view.
    }


}

