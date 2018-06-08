//
//  LYDefines.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

//  MARK: - network

//  juhe test
public let URL_juhe_basic = "http://v.juhe.cn/toutiao"

public let URL_juhe_index = "/index"

public let kType = "type"

public let kKey = "key"

public let USER_juhe_key = "39ca5658b2572c35166b4bc1692ffd95"

//  MARK: - variables

//获取屏幕宽高
public let kScreenWidth = UIScreen.main.bounds.width
public let kScreenHeight = UIScreen.main.bounds.height
public let kScreenBounds = UIScreen.main.bounds

public let kStatusBarHeight = UIApplication.shared.statusBarFrame.height
public let kNavBarHeight: CGFloat = 44
public let kTabBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height > 20 ? 83.0 : 49.0
public let kTopHeight = kStatusBarHeight + kNavBarHeight

//homepage
public let kHomeCollectionViewWidth = kScreenWidth
public let kHomeCollectionViewHeight = kScreenHeight - kTopHeight - kTabBarHeight - kSegmentControlHeight
public let kHomeTableViewWidth: CGFloat = kHomeCollectionViewWidth - 2
public let kHomeTableViewHeight: CGFloat = kHomeCollectionViewHeight - 2

public let kSegmentControlHeight: CGFloat = 44



class LYDefines: NSObject {

}