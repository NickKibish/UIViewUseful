//
//  TestView2.swift
//  UIViewUseful
//
//  Created by Nick Kibish on 2/5/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class TestView2: UIView {
    @IBOutlet var view: UIView!
    
    override var outletView: UIView {
        return view
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addOutletView()
    }
}
