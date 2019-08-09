//
//  LineViewController.swift
//  FloraFlowerInfo
//
//  Created by Joy on 2019/8/9.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit
import WebKit

class LineViewController: UIViewController {

    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let  url = URL(string: "https://line.me/ti/p/@eqe0470s")
        let request = URLRequest(url: url!)
        webView.load(request)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
