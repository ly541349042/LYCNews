//
//  EventTableView.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/12.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit
import MJRefresh
import SafariServices
class EventTableView: LYBaseTableView {

    var mEvents: [EventModel] = []

    func config() {

        let header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(headerRefresh))
        header!.isAutomaticallyChangeAlpha = true
        header!.lastUpdatedTimeLabel.isHidden = false
        header!.stateLabel.isHidden = false

        let footer = MJRefreshBackNormalFooter(refreshingTarget: self, refreshingAction: #selector(footerRefresh))

        self.mj_header = header
        self.mj_footer = footer

        self.mj_header.beginRefreshing()
    }

    @objc func headerRefresh() {
        LYRequest.fakeRequestEvent { (models) in
            self.mEvents = models
            self.reloadData()
            self.mj_header.endRefreshing()
        }
    }

    @objc func footerRefresh() {

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mEvents.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: kEventTableViewCellReuseId) as? EventTableViewCell {
            cell.setupWithModel(self.mEvents[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let model = self.mEvents[indexPath.row]
//        
//        if let vc = self.firstAvailableViewController() {
//            let sf = SFSafariViewController(url: URL(string: model.url)!)
//            vc.present(sf, animated: true, completion: nil)
//        }
//    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
}
