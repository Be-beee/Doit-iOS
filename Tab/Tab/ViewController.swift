//
//  ViewController.swift
//  Tab
//
//  Created by 서보경 on 2020/01/14.
//  Copyright © 2020 서보경. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnMoveDatePickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    @IBAction func btnMovePickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 3
    }
}
//tabBarController?.selectedIndex -> 왼쪽부터 0, 1, 2, 3, ...
