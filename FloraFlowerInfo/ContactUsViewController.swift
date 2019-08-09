//
//  ContactUsViewController.swift
//  FloraFlowerInfo
//
//  Created by Joy on 2019/8/9.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit
import MessageUI

class ContactUsViewController: UIViewController ,MFMailComposeViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        
       
    }
    
    @IBAction func clickMail(_ sender: UIButton) {
        showMailComposer()
    }
    
    
    func showMailComposer() {
        guard  MFMailComposeViewController.canSendMail() else {
             print("Mail services are not available")
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["floraflwoer@gmail.com"])
        composer.setSubject("Hi")
        composer.setMessageBody("I want to buy more", isHTML: false)
        
        present(composer, animated: true)
    }

    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
      
        if let _ = error { //got error
            dismiss(animated: true, completion: nil)
        
             return
        }
        
        switch  result {
        case .cancelled:
            print("cancelled")
        case .failed:
            print("failed to mail")
        case .saved:
            print("saved")
        case .sent:
            print("mail sent")
        }
        // Dismiss the mail compose view controller.
        dismiss(animated: true, completion: nil)
    }
 

}
