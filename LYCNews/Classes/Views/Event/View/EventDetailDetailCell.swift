//
//  EventDetailDetailCell.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/13.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

public let kEventDetailDetailCellReuseId = "eventDetailDetailCellReuseId"


class EventDetailDetailCell: UITableViewCell {

    @IBOutlet weak var detailWebView: UIWebView!

    var htmlContent = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupWithContent(_ content: String) {
        detailWebView.delegate = self
        let htmlString =  "<html><head><title>qwer</title></head><body>\(content)</body></html>"
        detailWebView.loadHTMLString(htmlString, baseURL: nil)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension EventDetailDetailCell: UIWebViewDelegate {

}
