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
    var eventId: Int = 0
    var title: String = ""
    var desc: String = ""
    var fromDate: String = ""
    var toDate: String = ""
    var address: String = ""
    var url: String = ""
    var eventImage: String = ""

    required init() {}
}

class EventDataModel: HandyJSON {
    var stat: Int = 0
    var data: [EventModel] = []

    required init() {}
}
