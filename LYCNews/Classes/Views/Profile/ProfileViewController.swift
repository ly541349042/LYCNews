//
//  ProfileViewController.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class ProfileViewController: LYBaseViewController {

    
    @IBOutlet weak var userHeaderImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var settingTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configUserImageView()
        configNameLabel()
        configTableView()
        
        
        userNameLabel.isUserInteractionEnabled = true
        let ges = UITapGestureRecognizer(target: self, action: #selector(tapUserName))
        userNameLabel.addGestureRecognizer(ges)
    }
    
    func configUserImageView() {
        userHeaderImageView.layer.cornerRadius = userHeaderImageView.frame.width / 2
        userHeaderImageView.layer.masksToBounds = true
    }
    
    func configNameLabel() {
        if LYAuthManager.shared.isLoggedIn(),
            let user = LYLocalDataManager.shared.currentUser {
            userNameLabel.text = user.name
        } else {
            userNameLabel.isUserInteractionEnabled = true
            let ges = UITapGestureRecognizer(target: self, action: #selector(tapUserName))
            userNameLabel.addGestureRecognizer(ges)
        }
    }
    
    func configTableView() {
        settingTableView.delegate = self
        settingTableView.dataSource = self
        settingTableView.reloadData()
    }
    
    @objc func tapUserName() {
        if !LYAuthManager.shared.isLoggedIn() {
            showLogin()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCellReuseId")
        switch indexPath.row {
        case 0:
            cell?.textLabel!.text = "my info"
        case 1:
            cell?.textLabel!.text = "my event"
        case 2:
            cell?.textLabel!.text = "about us"
        default:
            cell?.textLabel?.text = "out"
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
}

extension ProfileViewController: UITableViewDelegate {
    
}
