//
//  EventDetailImageCell.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/13.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

public let kEventDetailImageCellReuseId = "eventDetailImageCellReuseId"
class EventDetailImageCell: UITableViewCell {

    @IBOutlet weak var mImageView: UIImageView!
    var imageUrl = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
