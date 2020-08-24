//
//  ViewController.swift
//  Navigation
//
//  Created by 서보경 on 2020/01/14.
//  Copyright © 2020 서보경. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    var isOn = true
    var isZoom = true
    
    @IBOutlet var txtMessage: UITextField!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = imgOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        editViewController.textMessage = txtMessage.text!
        editViewController.isOn = isOn
        editViewController.isZoom = isZoom
        editViewController.delegate = self
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use BAR button"
        }
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txtMessage.text = message
    }
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn {
            imgView.image = imgOn
            self.isOn = true
        } else {
            imgView.image = imgOff
            self.isOn = false
        }
    }
    
    func didImageZoomDone(_ controller: EditViewController, isZoom: Bool) {
        let scale:CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if !isZoom {
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
//            self.isZoom = true
        } else {
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
//            self.isZoom = false
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
    }


}

