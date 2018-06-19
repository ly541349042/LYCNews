//
//  LYLocalDataManager.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class LYLocalDataManager: NSObject {

    //  todo: this is not nil after request login api.
    var currentUser: LYUserModel?

    static let shared = LYLocalDataManager()
    
    override init() {
        super.init()
    }
}
