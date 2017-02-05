//
//  UIView+NibInstance.swift
//  Pods
//
//  Created by Nick Kibish on 2/5/17.
//
//

import UIKit

public protocol NIBInstance {
    static var nibName: String { get }
    var nibName: String { get }
    var outletView: UIView { get }
    init(nibName: String)
}

public extension NIBInstance {
    /// Name of NIB (XIB), where the view was design. By default it's class name
    static var nibName: String {
        return String(describing: self)
    }
    
    /// Name of NIB (XIB), where the view was design. By default it's class name
    public var nibName: String {
        return String(describing: type(of: self))
    }
    
    /// Use this initializer to init view from determined XIB.
    ///
    /// - Parameter nibName: name of XIB. You can use static nibName variable
    init(nibName: String) {
        let nib = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)
        self = (nib?.first)! as! Self
    }
}

// MARK: - NIBInstance
extension UIView: NIBInstance {
    /// View, which should be added to this view. Use it, when you need use view, created in XIB 
    public var outletView: UIView {
        return UIView()
    }
    
    public func addOutletView() {
        Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        outletView.frame = self.bounds
        addSubview(outletView)
    }
}
