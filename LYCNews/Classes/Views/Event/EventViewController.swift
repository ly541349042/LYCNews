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
    }
}

extension EventViewController: LYTableViewDelegate {
    func tableView(_ tableView: UITableView, didClick index: IndexPath) {
        let model = self.mEventTableView.mEvents[index.row]
        self.performSegue(withIdentifier: "showEventDetailSegue", sender: model)
    }
}
