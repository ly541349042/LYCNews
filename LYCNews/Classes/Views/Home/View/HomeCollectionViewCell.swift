//
//  LYHomeCollectionViewCell.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit

//  reuseID: "lyhomeCollCellId"
public let kHomeCollectionViewCellReuseId = "homeCollectionViewCellReuseId"
class HomeCollectionViewCell: UICollectionViewCell {
    
    
//    var mChannel: String = ""
    
    
    @IBOutlet weak var mHomeTableView: HomeTableView!
    
    func basicSetup() {
        mHomeTableView.lyTableViewDelegate = self
        mHomeTableView.config()
    }
    
    func setupWithChannel(_ channel: String) {
//        self.mChannel = channel
        mHomeTableView.requestWithChannel(channel)
    }
}

extension HomeCollectionViewCell: LYTableViewDelegate {
    func tableView(_ tableView: UITableView, didClick index: IndexPath) {
        
    }
}
