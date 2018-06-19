//
//  LYAuthManager.swift
//  LYCNews
//
//  Created by test on 2018/06/19.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit

class LYAuthManager: NSObject {

    static let shared = LYAuthManager()
        
    override init() {
        super.init()
    }
    
    public func isLoggedIn() -> Bool {
        if LYSecureDataManager.shared.accessToken != "",
            LYSecureDataManager.shared.memberId > 0 {
            return true
        }
        return false
    }
}
