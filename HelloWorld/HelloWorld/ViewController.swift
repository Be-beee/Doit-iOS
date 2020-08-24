//
//  ViewController.swift
//  HelloWorld
//
//  Created by 서보경 on 2019/12/27.
//  Copyright © 2019 서보경. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

