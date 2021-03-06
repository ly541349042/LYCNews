//
//  EventDetailViewController.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/12.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class EventDetailViewController: LYBaseViewController {

    @IBOutlet weak var mTableView: EventDetailTableView!

    var mModel: EventModel = EventModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = self.mModel.title
        self.mTableView.lyTableViewDelegate = self
        self.mTableView.configWithModel(self.mModel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension EventDetailViewController: LYTableViewDelegate {
    func tableView(_ tableView: UITableView, didClick index: IndexPath) {
        //   detail url clicked
    }
}
