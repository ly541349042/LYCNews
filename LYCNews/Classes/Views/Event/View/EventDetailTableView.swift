//
//  EventDetailTableView.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/13.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class EventDetailTableView: LYBaseTableView {

    var mModel: EventModel = EventModel()

    func configWithModel(_ model: EventModel) {
        self.mModel = model

        self.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailImageCellReuseId) as? EventDetailImageCell {
//                cell.imageUrl = self.mModel.eventImage
                cell.mImageView.sd_setImage(with: URL(string: self.mModel.coverUrl)!)
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailTitleCellReuseId) as? EventDetailTitleCell {
                cell.mTitle.text = self.mModel.title
                cell.mDetail.text = "10人感兴趣/6人参加"
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailActionCellReuseId) as? EventDetailActionCell {
                return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailTimeCellReuseId) as? EventDetailTimeCell {
                cell.detailTextLabel?.text = "\(self.mModel.beginTime)~\(self.mModel.endTime)"
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailLocationCellReuseId) as? EventDetailLocationCell {
                cell.detailTextLabel?.text = self.mModel.address
                return cell
            }
        case 5:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailFeeCellReuseId) as? EventDetailFeeCell {
                cell.detailTextLabel?.text = self.mModel.hasTicket
                return cell
            }
        case 6:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailInfoCellReuseId) as? EventDetailInfoCell {
                cell.detailTextLabel?.text = "www.baidu.com"
                return cell
            }
        case 7:
            if let cell = tableView.dequeueReusableCell(withIdentifier: kEventDetailDetailCellReuseId) as? EventDetailDetailCell {
//                cell.htmlContent = self.mModel.content
                cell.setupWithContent(self.mModel.content)
                return cell
            }
        default:
            return UITableViewCell()
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 300
        case 1:
            return 55
        case 2:
            return 60
        case 3,4,5:
            return 44
        case 6:
            return 65
        case 7:
            return 400
        default:
            return 1
        }
    }
}
