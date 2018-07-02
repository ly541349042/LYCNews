//
//  LYRequest.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit

class LYRequest: NSObject {

    //  MARK: - normal methods - real enjob

    static func requestNewsList(_ finishedBlock: @escaping (_ result: [HomeNewsModel]) -> ()) {
        LYConnectionManager.shared.requestPostData(
            URL_news_list,
            params: nil)
        { (jsonStringResponse) in
            var models = [HomeNewsModel]()
            if let dataModel = HomeNewsDataModel.deserialize(from: jsonStringResponse) {
                models = dataModel.news
            }
            finishedBlock(models)
        }
    }


    static func requestEventsList(_ finishedBlock: @escaping (_ result: [EventModel]) -> ()) {
        LYConnectionManager.shared.requestPostData(
            URL_events_list,
            params: nil) { (jsonStringResponse) in
                var models = [EventModel]()
                if let dataModel = EventDataModel.deserialize(from: jsonStringResponse) {
                    models = dataModel.activities
                }
                finishedBlock(models)
        }
    }



    //  MARK: - normal methods - JUHE test

//    static func requestChannel(_ channel: String, finishedBlock: @escaping (_ result: [HomeNewsModel]) -> ()) {
//        LYConnectionManager.shared.requestGetData(
//            URL_juhe_index,
//            params: [kType: channel,
//                     kKey: USER_juhe_key])
//        { (jsonStringResponse) in
//            var models = [HomeNewsModel]()
//            if let dataModel = HomeNewsDataModel.deserialize(from: jsonStringResponse, designatedPath: "result") {
//                models = dataModel.data
//            }
//            finishedBlock(models)
//        }
//    }

}
