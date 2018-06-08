//
//  LYConnectionManager.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit
import Alamofire
import HandyJSON

enum MethodType {
    case get
    case post
}

class LYConnectionManager: NSObject {
    
    //  static manager
    static let shared = LYConnectionManager(URL_juhe_basic)
    let mBaseUrl: String
    private init(_ baseUrl: String) {
        self.mBaseUrl = baseUrl
    }
    
    //  MARK: - common methods
    
    func requestGetData(_ component: String, params: [String:Any]? = nil, finishedBlock: @escaping(_ result: String) -> ()) {
        requestData(.get, component: component, params: params, finishedBlock: finishedBlock)
    }
    
    func requestPostData(_ component: String, params: [String:Any]? = nil, finishedBlock: @escaping(_ result: String) -> ()) {
        requestData(.post, component: component, params: params, finishedBlock: finishedBlock)
    }

    private func requestData(_ type: MethodType, component: String, params: [String:Any]? = nil, finishedBlock: @escaping(_ result: String) -> ()) {
        
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        
        let url = mBaseUrl + component
        
        Alamofire.request(url, method: method, parameters: params).responseString { (jsonString) in
//            print("\(jsonString)")
            guard let value = jsonString.result.value else {
                print(jsonString.result.error!)
                return
            }
            print("\(value)")
            finishedBlock(value)
        }
    }
    
    
}
