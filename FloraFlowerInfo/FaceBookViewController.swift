//
//  FaceBookViewController.swift
//  FloraFlowerInfo
//
//  Created by Joy on 2019/8/9.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit
import WebKit

class FaceBookViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let  url = URL(string: "https://www.facebook.com/lavieenrose.flora/")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    

   

}
