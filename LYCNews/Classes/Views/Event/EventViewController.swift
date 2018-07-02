//
//  EventViewController.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class EventViewController: LYBaseViewController {

    @IBOutlet weak var mEventTableView: EventTableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.mEventTableView.lyTableViewDelegate = self
        self.mEventTableView.config()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEventDetailSegue",
            let vc = segue.destination as? EventDetailViewController {
            vc.mModel = sender as! EventModel
        }

        if segue.identifier == "presentDetailWebSegue",
            let vc = segue.destination as? EventDetailWebViewController,
            let model = sender as? EventModel {

//            let htmlString = "<html><head><meta name=\"viewport\" content=\"initial-scale=1.0, minimum-scale=0.1, maximum-scale=2.0, user-scalable=yes\">  </head><body>\(model.content)</body></html>"
            vc.htmlContent = model.content
        }
    }
}

extension EventViewController: LYTableViewDelegate {
    func tableView(_ tableView: UITableView, didClick index: IndexPath) {
        let model = self.mEventTableView.mEvents[index.row]
        self.performSegue(withIdentifier: "presentDetailWebSegue", sender: model)
//        self.performSegue(withIdentifier: "showEventDetailSegue", sender: model)
    }
}
