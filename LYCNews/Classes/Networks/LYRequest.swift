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
}
