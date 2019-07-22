//
//  WebViewViewController.swift
//  uuidchecker
//
//  Copyright © 2019 Supership, inc. All rights reserved.
//

import UIKit

class WebViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func didClickCloseButton(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
}
