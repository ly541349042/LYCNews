//
//  EventDetailWebViewController.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/29.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit

class EventDetailWebViewController: LYBaseViewController, UIWebViewDelegate {

    @IBOutlet weak var detailWebview: UIWebView!

    var htmlContent = ""

    var isLoadingFinished = false

    override func viewDidLoad() {
        super.viewDidLoad()

        isLoadingFinished = false
        detailWebview.delegate = self
        detailWebview.scalesPageToFit = false
        detailWebview.scrollView.bounces = false
        // Do any additional setup after loading the view.
        if let htmlFile = Bundle.main.path(forResource: "eventDetail", ofType: "html"),
            let htmlString = try? String(contentsOfFile: htmlFile, encoding: .utf8) {
            let url = String(format: htmlString, htmlContent)
            detailWebview.loadHTMLString(url, baseURL: Bundle.main.bundleURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func clickBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


    @IBAction func clickJoin(_ sender: UIButton) {
        if !isLoggedIn() {
            showLogin()
        }
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        
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
