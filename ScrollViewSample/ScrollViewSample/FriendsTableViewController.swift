//
//  FriendsTableViewController.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/10.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController {
    

    


    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFriendsList()
        friendsTableView.dataSource = self
        friendsTableView.delegate = self
        friendsTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        pickerController.delegate = self
        
        // Do any additional setup after loading the view.
        
    }
 
    // MARK: - Privat var & func
    private var pickerController = UIImagePickerController()
    private var friendsList: [FriendsData] = []
    private func setFriendsList() {
        
        let profile1 = FriendsData(profile: "profile1Img", name: "이드깨", statusMessage: "재밌는 프로그래밍")
        let profile2 = FriendsData(profile: "profile2Img", name: "이웅이", statusMessage: "열역학은 너무 어려워ㅠㅠ")
        let profile3 = FriendsData(profile: "profile3Img", name: "이들깨", statusMessage: "수학 문제 푸는 거 재밌다아")
        let profile4 = FriendsData(profile: "profile4Img", name: "두개", statusMessage: "드꺠는 두배로 귀엽다")
        let profile5 = FriendsData(profile: "profile5Img", name: "새개", statusMessage: "드꺠는 세배로 귀엽다")
        let profile6 = FriendsData(profile: "profile6Img", name: "내개", statusMessage: "드꺠는 네배로 귀엽다")
        let profile7 = FriendsData(profile: "profile7Img", name: "다섯개", statusMessage: "드꺠는 다섯배로 귀엽다")
        let profile8 = FriendsData(profile: "profile8Img", name: "여섯개", statusMessage: "드꺠는 여섯배로 귀엽다")
        let profile9 = FriendsData(profile: "profile9Img", name: "일곱개", statusMessage: "드꺠는 일곱배로 귀엽다")
        let profile10 = FriendsData(profile: "profile1Img", name: "여덟개", statusMessage: "드꺠는 여덟배로 귀엽다")
        let profile11 = FriendsData(profile: "profile7Img", name: "아홉개", statusMessage: "드꺠는 아홉배로 귀엽다")
        let profile12 = FriendsData(profile: "profile8Img", name: "열개", statusMessage: "드꺠는 열배로 귀엽다")

        /* 기억이 하나도 안 난다... tuple 만들어서 for문으로 인덱싱해서 값 할당하기... 어떻게 하더라ㅠ
        let profileData : [(String, String, String)] = [("profile1Img","이드깨","재밌는 프로그래밍"),("profile2Img", "이웅이", "열역학은 너무 어려워ㅠㅠ"),("profile3Img", "이들깨", "수학 문제 푸는 거 재밌다아"), ("profile4Img", "두개", "드꺠는 두배로 귀엽다"), ("profile5Img", "새개", "드꺠는 세배로 귀엽다"), ("profile6Img", "내개", "드꺠는 네배로 귀엽다"), ("profile7Img", "다섯개", "드꺠는 다섯배로 귀엽다"), ("profile8Img", "여섯개", "드꺠는 여섯배로 귀엽다"), ("profile9Img", "일곱개", "드꺠는 일곱배로 귀엽다"), ("profile4Img", "여덟개", "드꺠는 여덟배로 귀엽다"), ("profile5Img", "아홉개", "드꺠는 아홉배로 귀엽다"), ("profile6Img", "열개", "드꺠는 열배로 귀엽다")]
        
        for tuple in profileData{
            
        }
        */
        
        friendsList = [profile1, profile2, profile3, profile4, profile5, profile6, profile7, profile8, profile9, profile10, profile11, profile12]
    
        friendsTableView.reloadData()
        
        //데이터 수정했는데 테이블이 리로딩이 안 되어서 데이터가 안 들어가짐!
    }
    
    // MARK: - IBOutlet

    @IBOutlet weak var logoutButton: UIButton!
    
    @IBAction func doLogout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        // 화면 dismiss
    }
    // ActhionSheet 활용해서 팝업 뷰 만들 수 있음.
    @IBAction func settingActionSheet(_ sender: Any) {
        
    let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertController.Style.actionSheet)
    let manageFriends = UIAlertAction(title: "친구 관리", style: UIAlertAction.Style.default, handler : nil)
    let systemSetting = UIAlertAction(title: "전체 설정", style: UIAlertAction.Style.default, handler : nil)
    let cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel)
        optionMenu.addAction(manageFriends)
        optionMenu.addAction(systemSetting)
        optionMenu.addAction(cancelAction)

        present(optionMenu, animated: true, completion: nil)

        // https://zeddios.tistory.com/111
            }
    
    @IBOutlet weak var friendsTableView: UITableView!
    
}


// MARK: - DataSource

extension FriendsTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = TableSection(rawValue: section) else { return 0 }
        switch section {
        case .myProfile: return 1
        case .friendsProfile: return friendsList.count-1 }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let friendsCell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier) as? FriendsTableViewCell else { return UITableViewCell() } // 저 return 뒤의 영역 그대로 따라간다!
        guard let section = TableSection(rawValue: indexPath.section) else { return UITableViewCell() }
        switch section {
        case .myProfile:

            friendsCell.indexPath = indexPath
            friendsCell.delegate = self
            friendsCell.selectionStyle = .none
            
            return friendsCell
            

        case .friendsProfile:
            let index = indexPath.row + 1
            friendsCell.set(friendsList[index])
            
            return friendsCell
        }
    }

}

// MARK: - Delegate

extension FriendsTableViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int { return 2 }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let section = TableSection(rawValue: indexPath.section) else { return 0 }
        switch section {
        case .myProfile:
            return 80
        case .friendsProfile:
            return 70
        }

    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard let section = TableSection(rawValue: section) else { return 0 }
        switch section {
        case .myProfile: return 0
        case .friendsProfile: return 20 }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        
        let header = UILabel()
        let friendsCount = UILabel()
        
        header.text = "친구 "
        header.font = UIFont.systemFont(ofSize: 12)
        header.frame = CGRect.init(x: 16, y: 0, width: 50, height: 30)
        header.textColor = UIColor.lightGray
        
        friendsCount.text = "\(friendsList.count-1)"
        friendsCount.font = UIFont.systemFont(ofSize: 11)
        friendsCount.frame = CGRect.init(x: 40, y: 0, width: 50, height: 30)
        friendsCount.textColor = UIColor.lightGray
        view.addSubview(header)
        view.addSubview(friendsCount)
        
        // 구분선 추가 - 내프로필과 친구 목록 사이
        // https://stackoverflow.com/questions/30460367/how-to-add-bottom-border-to-tableview-section-header
        
        let borderLine = CGRect(x: 0, y: -9.5, width: 375, height: 1)
        let seperatorView = UIView(frame: borderLine)
        seperatorView.backgroundColor = UIColor.lightGray
        header.addSubview(seperatorView)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    //How to get rid of a row in table view swift
    // https://stackoverflow.com/questions/24103069/add-swipe-to-delete-uitableviewcell // 컨닝 컨닝 컨닝
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if editingStyle == UITableViewCell.EditingStyle.delete {
                friendsList.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)}
            
        }
        
    }
    
    
}


extension FriendsTableViewController: ButtonDelegate { func onClickCellButton(in index: Int) {
    let alertController = UIAlertController(title: "사진 선택", message: "가져올 곳을 선택하세 요", preferredStyle: .actionSheet)
    let galleryAction = UIAlertAction(title: "사진앨범", style: .default) { action in self.openLibrary()
    }
    let photoAction = UIAlertAction(title: "카메라", style: .default) { action in self.openCamera()
    }
    let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alertController.addAction(galleryAction)
        alertController.addAction(photoAction)
        alertController.addAction(cancelAction)
    self.present(alertController, animated: true, completion: nil) }
}

extension FriendsTableViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func openLibrary() {
        pickerController.sourceType = .photoLibrary
        self.present(pickerController, animated: true, completion: nil)
    }
    
    func openCamera() {
        pickerController.sourceType = .camera
        self.present(pickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage,
            let url = info[UIImagePickerController.InfoKey.imageURL] as? URL {
            guard let token = UserDefaults.standard.object(forKey: "token") as? String else { return }
            UploadService.shared.uploadImage(token, image, url.lastPathComponent) { networkResult in
                switch networkResult {
                case .success(let profileData):
                    guard let profileData = profileData as? [UserProfile] else { return }
                    print(profileData[0].profile) case .requestErr(let failMessage):
                        guard let message = failMessage as? String else { return }
                        print(message) case .pathErr:
                            print("pathErr") case .serverErr:
                                print("serverErr") case .networkFail:
                                    print("networkFail")
                }
            }
            guard let profileCell = friendsTableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? FriendsTableViewCell else { return }
            profileCell.profileImage.image = image }
        dismiss(animated: true, completion: nil) }
}
                                                                                                                                                                                                                                              
