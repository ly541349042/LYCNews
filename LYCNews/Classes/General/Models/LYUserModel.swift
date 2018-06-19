//
//  LYUserModel.swift
//  LYCNews
//
//  Created by test on 2018/06/19.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit
import HandyJSON

class LYUserModel: HandyJSON {

    var userId = 0
    var name = ""
    var email = ""
    var gender = 0  // 1:male, 2: female, 0: unknown
    var age = 0
    var password = ""
    var headerImage = ""
    
    required init() {}
}
