//
//  EventTableViewCell.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/12.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

public let kEventTableViewCellReuseId = "eventTableViewCellReuseId"
class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventTitleLabel: UILabel!
    @IBOutlet weak var eventDescLabel: UILabel!
    @IBOutlet weak var eventLocationLabel: UILabel!
    @IBOutlet weak var eventLikeButton: UIButton!

    var mModel: EventModel = EventModel()

    func setupWithModel(_ model: EventModel) {

        self.mModel = model
        self.eventImageView.sd_setImage(with: URL(string: model.coverUrl))
        self.eventTitleLabel.text = model.title
        self.eventDescLabel.text = model.category
        self.eventLocationLabel.text = model.address
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
