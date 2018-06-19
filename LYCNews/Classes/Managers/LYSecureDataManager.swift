//
//  LYSecureDataManager.swift
//  LYCNews
//
//  Created by test on 2018/06/19.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit

class LYSecureDataManager: NSObject {

    var accessToken: String = ""
    var memberId: Int = 0
    
    static let shared = LYSecureDataManager()
    
    override init() {
        super.init()
    }
    
    //  todo: add keychain
    //  pod 'KeychainAccess'
}
