//
//  ViewController.swift
//  covid-app
//
//  Created by Diego Kamiha  on 06/05/20.
//  Copyright © 2020 kamiha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UITextView!
    
    @IBOutlet weak var number: UITextView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onUpdateClicked(_ sender: Any) {
        count += 1
        number.text = String(count)
    }
}
