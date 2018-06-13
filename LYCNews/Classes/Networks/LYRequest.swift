//
//  LYRequest.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit

class LYRequest: NSObject {

    
    //  MARK: - normal methods
    static func requestChannel(_ channel: String, finishedBlock: @escaping (_ result: [HomeNewsModel]) -> ()) {
        LYConnectionManager.shared.requestGetData(
            URL_juhe_index,
            params: [kType: channel,
                     kKey: USER_juhe_key])
        { (jsonStringResponse) in
            var models = [HomeNewsModel]()
            if let dataModel = HomeNewsDataModel.deserialize(from: jsonStringResponse, designatedPath: "result") {
                models = dataModel.data
            }
            finishedBlock(models)
        }
    }

    static func requestEvent(_ finishedBlock: @escaping (_ result: [EventModel]) -> ()) {
        LYConnectionManager.shared.requestGetData("real event api") { (jsonString) in
            var models = [EventModel]()
            if let dataModel = EventDataModel.deserialize(from: jsonString) {
                models = dataModel.data
            }
            finishedBlock(models)
        }
    }

    //  use for fake events
    static func fakeRequestEvent(_ finishedBlock: @escaping (_ result: [EventModel]) -> ()) {
        sleep(2)
        var models = [EventModel]()
        for i in 1..<10 {
            let model = EventModel()
            model.eventId = i
            model.address = "tokyo"
            model.desc = "desc of event"
            model.fromDate = "20180101"
            model.toDate = "20190101"
            model.title = "event \(i) title"
            model.url = "https://www.baidu.com"
            model.eventImage = "http://www.schooldays.ie/schooldays.nsf/0/76924DA846D98B86802571D00047F54D/$file/St%20Mary's%20Secondary%20School%20Mallow%2062350D%20(320%20x%20160).jpg"
            models.append(model)
        }
        finishedBlock(models)
    }
}
