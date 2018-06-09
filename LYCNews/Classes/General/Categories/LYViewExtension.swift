//
//  LYViewExtension.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/9.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class LYViewExtension: UIView {
}

extension UIView {
    //返回该view所在VC.
    func firstAvailableViewController() -> UIViewController? {
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let responder = view?.next {
                if responder.isKind(of: UIViewController.self){
                    return responder as? UIViewController
                }
            }
        }
        return nil
    }
}
