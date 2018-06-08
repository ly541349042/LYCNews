//
//  HomeCollectionView.swift
//  LYCNews
//
//  Created by test on 2018/06/08.
//  Copyright © 2018 iStack. All rights reserved.
//

import UIKit

class HomeCollectionView: LYBaseCollectionView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var mCategories: [String] = []

    override func configWithModels(_ models: [Any]) {
        super.configWithModels(models)
        self.mCategories = models as! [String]
    }
    
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        print("end")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("endend")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.mCategories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kHomeCollectionViewCellReuseId, for: indexPath) as? HomeCollectionViewCell {
            cell.basicSetup()
            cell.setupWithChannel(self.mCategories[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
}

