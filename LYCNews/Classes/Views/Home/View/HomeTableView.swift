//
//  HomeTableView.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit
import MJRefresh

import SafariServices

class HomeTableView: LYBaseTableView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var mChannel = ""
    var mNewsModels: [HomeNewsModel] = []
    
    func config() {
        
        let header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(headerRefresh))
        header!.isAutomaticallyChangeAlpha = true
        header!.lastUpdatedTimeLabel.isHidden = false
        header!.stateLabel.isHidden = false
        
        let footer = MJRefreshBackNormalFooter(refreshingTarget: self, refreshingAction: #selector(footerRefresh))
        self.mj_header = header
        self.mj_footer = footer
    }
    
    func requestWithChannel(_ channel: String) {
        self.mChannel = channel
        self.mj_header.beginRefreshing()
    }
    
    func loadMoreWithModel() {
        
    }
    
    @objc func headerRefresh() {
        LYRequest.requestChannel(self.mChannel) { (models) in
            self.mNewsModels = models
            self.reloadData()
            self.mj_header.endRefreshing()
        }
    }
    
    @objc func footerRefresh() {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mNewsModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: kHomeTableViewCellReuseId) as? HomeTableViewCell {
            cell.setupWithModel(self.mNewsModels[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = self.mNewsModels[indexPath.row]
        if let vc = UIApplication.shared.keyWindow?.rootViewController {
            let sf = SFSafariViewController(url: URL(string: model.url)!)
            vc.present(sf, animated: true, completion: nil)
        }
        
    }
}
