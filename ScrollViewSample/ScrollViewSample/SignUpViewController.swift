//
//  SignUpViewController.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/08.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var IDView: UIView!
    @IBOutlet weak var PasswordView: UIView!
    @IBOutlet weak var EmaillView: UIView!
    @IBOutlet weak var NameView: UIView!
    @IBOutlet weak var PhoneNumberView: UIView!
    @IBOutlet weak var SignUpButton: UIButton!
    
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!

    
    
    @IBAction func doSignup(_ sender: Any) {
        
        guard let inputID = idTextField.text
            else {
                return
        }
        guard let inputPWD = pwTextField.text
            else{
                return
        }
        guard let inputEmail = EmailTextField.text
            else{
                return
        }
        guard let inputPhone = phoneTextField.text
            else{
                return
        }
        guard let inputName = nameTextField.text
            else{
                return
        }
        
        SignupServices.shared.login(id: inputID, pwd: inputPWD, name: inputName, email: inputEmail, phone: inputPhone ) {
            networkResult in
            switch networkResult {
            case .success(let token):
                    guard let token = token as? String
                        else {
                            return
                            
                    }
                    UserDefaults.standard.set(token, forKey: "token")
                    
                    self.navigationController?.popViewController(animated: true)
                
            case .requestErr(let message):
                guard let message = message as? String else { return }
                    //  로그인 데이터 잘못 넣으면 alert로 로그인 실패라는 메세지 띄움.
                    let alertViewController = UIAlertController(title: "회원가입 실패", message: message, preferredStyle: .alert)
                    let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                    alertViewController.addAction(action)
                    self.present(alertViewController, animated: true, completion: nil)
            case .pathErr: print("pathErr")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFail") }
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        // 네비게이션 백버튼 텍스트 삭제
        navigationController?.navigationBar.backItem?.title = ""
        
        NameView.layer.cornerRadius = 22
        IDView.layer.cornerRadius = 22
        EmaillView.layer.cornerRadius = 22
        PhoneNumberView.layer.cornerRadius = 22
        PasswordView.layer.cornerRadius = 22
        SignUpButton.layer.cornerRadius = 24
        
        NameView.layer.masksToBounds = true
        IDView.layer.masksToBounds = true
        PasswordView.layer.masksToBounds = true
        EmaillView.layer.masksToBounds = true
        PhoneNumberView.layer.masksToBounds = true
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
