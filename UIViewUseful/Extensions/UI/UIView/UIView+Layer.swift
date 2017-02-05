//
//  UIView+Layer.swift
//  Pods
//
//  Created by Nick Kibish on 2/5/17.
//
//

import UIKit

// MARK: - Layered values
extension UIView {
    @IBInspectable
    public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor? {
        get {
            guard let borderColor = layer.borderColor else { return nil }
            return UIColor(cgColor: borderColor)
        }
        
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    public func setShadow(_ width: CGFloat, height: CGFloat, radius: CGFloat, opacity: Float, color: UIColor) {
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: width, height: height)
        layer.shadowRadius = radius
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
    }
}
