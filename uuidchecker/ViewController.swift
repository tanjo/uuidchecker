//
//  ViewController.swift
//  uuidchecker
//
//  Copyright © 2019 Supership, inc. All rights reserved.
//

import UIKit
import AdSupport

class ViewController: UIViewController {

  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    generate()
  }
  
  @IBAction func didClickReloadButton(_ sender: Any) {
    generate()
  }
  
  func generate() {
    self.descriptionLabel.text = "ASIdentifierManager.shared().advertisingIdentifier.uuidString\n\(ASIdentifierManager.shared().advertisingIdentifier.uuidString)"
      + "\n\nUIDevice.current.identifierForVendor?.uuidString\n\(UIDevice.current.identifierForVendor?.uuidString ?? "")"
      + "\n\nProcessInfo().globallyUniqueString\n\(ProcessInfo().globallyUniqueString)"
      + "\n\nUUID().uuidString\n\(UUID().uuidString)"
  }
}

