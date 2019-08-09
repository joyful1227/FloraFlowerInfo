//
//  Graduation1ViewController.swift
//  FloraFlowerInfo
//
//  Created by Joy on 2019/8/9.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit

class Graduation1ViewController: UIViewController {

    @IBOutlet weak var imageVIew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickButton(_ sender: UIButton) {
        imageVIew.image = UIImage(named: "graduation1"+"\(sender.tag)")
    }
    

}
