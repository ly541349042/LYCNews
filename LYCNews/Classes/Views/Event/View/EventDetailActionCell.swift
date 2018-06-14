//
//  EventDetailActionCell.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/13.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

public let kEventDetailActionCellReuseId = "eventDetailActionCellReuseId"
class EventDetailActionCell: UITableViewCell {

    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var interestButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.joinButton.addTarget(self, action: #selector(joinEvent), for: .touchUpInside)
        self.interestButton.addTarget(self, action: #selector(interestedInEvent), for: .touchUpInside)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @objc func joinEvent() {

    }

    @objc func interestedInEvent() {
        //  add to a interestedEventDic.
    }
}
