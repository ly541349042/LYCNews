//
//  HomeNewsModel.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit
import HandyJSON

class HomeNewsModel: HandyJSON {

    var uniquekey: String = ""
    var title: String = ""
    var date: String = ""
    var category: String = ""
    var author_name: String = ""
    var url: String = ""
    var thumbnail_pic_s: String = ""
    var thumbnail_pic_s02: String = ""
    var thumbnail_pic_s03: String = ""

    required init() {}
}

class HomeNewsDataModel: HandyJSON {
    var stat: Int = 0
    var data: [HomeNewsModel] = []
    
    required init() {}
}

//class HomeNewsCompositionModel: HandyJSON {
//    var reason: String = ""
//    var result: [String:Any]
//}
