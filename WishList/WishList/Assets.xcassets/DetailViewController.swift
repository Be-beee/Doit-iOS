//
//  DetailViewController.swift
//  WishList
//
//  Created by 서보경 on 2020/02/29.
//  Copyright © 2020 서보경. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var receiveItem = ""
    var receiveMemo = ""
    var receivePriority = ""
    @IBOutlet var lblItem: UILabel!
    @IBOutlet var lblMemo: UILabel!
    @IBOutlet var lblPriority: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblItem.text = receiveItem
        lblMemo.text = receiveMemo
        lblPriority.text = receivePriority
    }
    func receiveItem(item: (Bool, String, String)) {
        if item.0 {
            receivePriority = "❤️"
        } else {
            receivePriority = "🤍"
        }
        receiveItem = item.1
        receiveMemo = item.2
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
