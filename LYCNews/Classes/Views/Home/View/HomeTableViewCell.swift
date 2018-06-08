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
    
    var mModel: HomeNewsModel = HomeNewsModel()
    
    func setupWithModel(_ model: HomeNewsModel) {
        
        self.textLabel?.text = model.title
        self.detailTextLabel?.text = model.date
        self.imageView?.sd_setImage(with: URL(string: model.thumbnail_pic_s)!)
        
        self.mModel = model
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
