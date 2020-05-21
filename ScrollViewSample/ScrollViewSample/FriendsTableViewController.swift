//
//  FriendsTableViewController.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/10.
//  Copyright © 2020 이지윤. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController {
    
    @IBOutlet weak var logoutButton: UIButton!
    
    @IBAction func doLogout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        // 화면 dismiss
    }
    
    
    private var friendsList: [FriendsData] = []
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFriendsList()
        friendsTableView.dataSource = self
        friendsTableView.delegate = self
        friendsTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        // Do any additional setup after loading the view.
        
    }
    
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
        
        
        friendsList = [profile1, profile2, profile3, profile4, profile5, profile6, profile7, profile8, profile9, profile10, profile11, profile12]
    
        friendsTableView.reloadData()
        
        //데이터 수정했는데 테이블이 리로딩이 안 되어서 데이터가 안 들어가짐!
    }
    
}

extension FriendsTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            
            return 1
        } else {
            return friendsList.count-1 }
        // 몇개의 friendsList 데이터 불러올지 결정!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let friendsCell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier) as? FriendsTableViewCell else {
            return UITableViewCell()
        }
        
        if indexPath.section == 0 {
            friendsCell.set(friendsList[0])
            // section이 0번째일 때, friendsList의 0번째 데이터 불러온다.
        } else {
            let index = indexPath.row + 1
            friendsCell.set(friendsList[index])
            // 나머지 section에서는 friednsList의 0+1번째 데이터 불러온다.
            // 이렇게 인덱싱 가능
        }
        
        return friendsCell }
}


extension FriendsTableViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 80
        case 1:
            return 70
        default:
            return 70
        }

    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else {
            return 20
        }
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


