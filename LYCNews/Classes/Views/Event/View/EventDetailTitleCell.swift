//
//  EventDetailTitleCell.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/13.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

public let kEventDetailTitleCellReuseId = "eventDetailTitleCellReuseId"
class EventDetailTitleCell: UITableViewCell {

    @IBOutlet weak var mTitle: UILabel!
    @IBOutlet weak var mDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
