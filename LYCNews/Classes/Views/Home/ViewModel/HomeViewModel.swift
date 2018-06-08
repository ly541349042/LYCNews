//
//  HomeViewModel.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

//  homepage is simple. dont use this file now. just use mvc is enough.

import Foundation

@objc protocol HomeViewModelDelegate {
    func requestData()
    func reloadViews()
    func alertInfo(_ text: String)
}

//protocol HomeViewModelInterface {
//    weak var delegate: HomeViewModelDelegate? { get set }
//
//    var
//}

class HomeViewModel: NSObject, HomeViewModelDelegate {
    
    weak var delegate: HomeViewModelDelegate?
    
    func requestData() {
        LYRequest.requestChannel("test") { (models) in
            self.delegate?.reloadViews()
        }
//        delegate?.reloadViews()
    }
    
    func reloadViews() {
        //reload views
    }
    
    func alertInfo(_ text: String) {
        //alert
    }
}
