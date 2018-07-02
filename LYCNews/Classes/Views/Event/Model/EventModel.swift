//
//  EventModel.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/12.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit
import HandyJSON

class EventModel: HandyJSON {
    var id: Int = 0
    var title: String = ""
    var createDate: String = "" //  "yyyy-MM-dd HH:mm:ss"
    var category: String = ""
    var coverUrl: String = ""
    var content: String = ""
    var participantCount: Int = 0
    var hasTicket: String = ""
    var beginTime: String = ""
    var endTime: String = ""
    var address: String = ""

    required init() {}
}

class EventDataModel: HandyJSON {
    var activities: [EventModel] = []

    required init() {}
}
