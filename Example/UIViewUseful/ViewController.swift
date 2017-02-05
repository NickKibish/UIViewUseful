//
//  ViewController.swift
//  UIViewUseful
//
//  Created by git on 02/05/2017.
//  Copyright (c) 2017 git. All rights reserved.
//

import UIKit
import UIViewUseful

class TestView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var nibName: String {
        return ""
    }
    
    static var nibName: String {
        return ""
    }
}

class ViewController: UIViewController {
    
}

