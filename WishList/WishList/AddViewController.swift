//
//  AddViewController.swift
//  WishList
//
//  Created by 서보경 on 2020/02/29.
//  Copyright © 2020 서보경. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var lblItem: UITextField!
    @IBOutlet var lblMemo: UITextField!
    @IBOutlet var swPriority: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnAdd(_ sender: UIButton) {
        if let tmp = lblItem.text {
            if tmp != "" {
                let item = (swPriority.isOn, tmp, lblMemo.text ?? "")
                items.append(item)
            } else {
                let inputAlert = UIAlertController(title: "앗!", message: "제품명을 입력해주세요!!", preferredStyle: UIAlertController.Style.alert)
                let onAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)
                inputAlert.addAction(onAction)
                present(inputAlert, animated: true, completion: nil)
            }
        }
        
        _ = navigationController?.popViewController(animated: true)
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
