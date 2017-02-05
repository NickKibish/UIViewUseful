//
//  UIView+NibInstance.swift
//  Pods
//
//  Created by Nick Kibish on 2/5/17.
//
//

import UIKit

/// Protocol for instance View from XIB
public protocol NIBInstance {
    /// Name of NIB (XIB), where the view was design. By default it's class name
    static var nibName: String { get }
    /// Name of NIB (XIB), where the view was design. By default it's class name
    var nibName: String { get }
    /// /// View, which should be added to this view. Use it, when you need use view, created in XIB
    var outletView: UIView { get }
    /// Use this initializer to init view from determined XIB.
    ///
    /// - Parameter nibName: name of XIB. You can use static nibName variable
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
    open var outletView: UIView {
        return UIView()
    }
    
    public func addOutletView() {
        Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        outletView.frame = self.bounds
        addSubview(outletView)
    }
}
