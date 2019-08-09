//
//  AM2ViewController.swift
//  FloraFlowerInfo
//
//  Created by Joy on 2019/8/9.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit

class AM2ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickButton(_ sender: UIButton) {
        imageView.image = UIImage(named: "AM2"+"\(sender.tag)")
    }
    

}
