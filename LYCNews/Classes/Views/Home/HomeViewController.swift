//
//  HomeViewController.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class HomeViewController: LYBaseViewController {
    
    //  test for toutiao api.
    let titles = ["头条","社会","国内","国际","娱乐","体育","军事","科技","财经","时尚"]
    let channels = ["top","shehui","guonei","guoji","yule","tiyu","junshi","keji","caijing","shishang"]

    //  IBOutlets
    
    @IBOutlet weak var segmentedControl: DZMSegmentedControl!
    
    @IBOutlet weak var homeCollectionVIew: HomeCollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCollectionView()
        
        configSegmentControl()
    }
    
    //  MARK: - UI config
    
    func configSegmentControl() {
        segmentedControl.itemAttributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15),
                                           NSAttributedStringKey.foregroundColor: UIColor.black]
        segmentedControl.itemSelectAttributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15),
                                                 NSAttributedStringKey.foregroundColor: UIColor.red]
        segmentedControl.delegate = self
        segmentedControl.backgroundColor = UIColor.yellow
        
        segmentedControl.register(homeCollectionVIew)
        segmentedControl.reload(titles)
    }
    
    func configCollectionView() {
//        homeCollectionVIew.mCategories = channels
        homeCollectionVIew.lyCollectionDelegate = self
        homeCollectionVIew.itemSize = CGSize(width: kScreenWidth, height: homeCollectionVIew.frame.height)
        homeCollectionVIew.configWithModels(channels)
        homeCollectionVIew.reloadData()
    }
}

extension HomeViewController: LYCollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didClick index: IndexPath) {
        // click cell nothing happenes..
    }
}

extension HomeViewController: DZMSegmentedControlDelegate {
    func segmentedControl(segmentedControl: DZMSegmentedControl, clickIndex index: NSInteger) {
        homeCollectionVIew.selectItem(at: IndexPath(item: index, section: 0), animated: true, scrollPosition: .centeredHorizontally)
        print("segment did click index - \(index)")
    }
}
