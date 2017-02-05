//
//  ViewExtViewController.swift
//  UIViewUseful
//
//  Created by Nick Kibish on 2/5/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import UIViewUseful

class ViewExtViewController: UIViewController {
    var testView = TestView(nibName: TestView.nibName)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(testView)
        
        testView.cornerRadius = 100
        testView.borderColor = .black
        testView.borderWidth = 3
        testView.setShadow(5, height: 5, radius: 30, opacity: 0.5, color: .black)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        testView.width = UIScreen.main.bounds.width
        testView.height = UIScreen.main.bounds.height / 2
    }
}
