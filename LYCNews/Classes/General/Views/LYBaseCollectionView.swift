//
//  LYBaseCollectionView.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit

protocol LYCollectionViewDelegate: NSObjectProtocol {
    func collectionView(_ collectionView: UICollectionView, didClick index: IndexPath)
    
}

class LYBaseCollectionView: UICollectionView {

    weak var lyCollectionDelegate: LYCollectionViewDelegate?
    
    var itemSize: CGSize = CGSize(width: 1, height: 1)
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        self.delegate = self
        self.dataSource = self
        
        self.isPagingEnabled = true
        self.isScrollEnabled = true
        self.isDirectionalLockEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
        
        
        self.delegate = self
        self.dataSource = self
        
        self.isPagingEnabled = true
        self.isScrollEnabled = true
        self.isDirectionalLockEnabled = true
    }
    
    func configLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.scrollDirection = .horizontal
        layout.itemSize = self.itemSize
        self.collectionViewLayout = layout
    }
    
    //  MARK: - need override
    public func configWithModels(_ models: [Any]) {
        configLayout()
        //  set models here, then reload data.
    }
}

extension LYBaseCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.lyCollectionDelegate?.collectionView(collectionView, didClick: indexPath)
    }
}

extension LYBaseCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
