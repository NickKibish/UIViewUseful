//
//  ButtonExtViewController.swift
//  UIViewUseful
//
//  Created by Nick Kibish on 2/12/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import UIViewUseful

class ButtonExtViewController: UIViewController {
    @IBOutlet var leftBtn: UIButton!
    @IBOutlet var rightBtn: UIButton!
    @IBOutlet var topBtn: UIButton!
    @IBOutlet var bottomBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftBtn.setImagePosition(position: .left)
        rightBtn.setImagePosition(position: .right)
        topBtn.setImagePosition(position: .top)
        bottomBtn.setImagePosition(position: .bottom)
    }
}
