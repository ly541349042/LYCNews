//
//  LYBaseTableView.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

protocol LYTableViewDelegate: NSObjectProtocol {
    func tableView(_ tableView: UITableView, didClick index: IndexPath)
}

class LYBaseTableView: UITableView {
    
    weak var lyTableViewDelegate: LYTableViewDelegate?

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.delegate = self
        self.dataSource = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
        self.delegate = self
        self.dataSource = self
    }

    deinit {
        self.delegate = nil
        self.dataSource = nil
    }
}

extension LYBaseTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension LYBaseTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        lyTableViewDelegate?.tableView(tableView, didClick: indexPath)
    }
}
