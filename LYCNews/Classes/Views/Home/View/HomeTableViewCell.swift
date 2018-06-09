//
//  HomeTableViewCell.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit
import SDWebImage

public let kHomeTableViewCellReuseId = "homeTableViewCellReuseId"
class HomeTableViewCell: UITableViewCell {


    @IBOutlet weak var mTitleLabel: UILabel!


    @IBOutlet weak var mAuthorLabel: UILabel!
    @IBOutlet weak var mDateLabel: UILabel!

    @IBOutlet weak var mThumbImageView: UIImageView!

    var mModel: HomeNewsModel = HomeNewsModel()
    
    func setupWithModel(_ model: HomeNewsModel) {
        self.mModel = model

        self.mTitleLabel.text = model.title
        self.mAuthorLabel.text = model.author_name
        self.mDateLabel.text = model.date
        self.mThumbImageView.sd_setImage(with: URL(string: model.thumbnail_pic_s)!)
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
