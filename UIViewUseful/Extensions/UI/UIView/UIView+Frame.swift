//
//  UIView+Frame.swift
//  Pods
//
//  Created by Nick Kibish on 2/5/17.
//
//

import UIKit

// MARK: - Framed values
extension UIView {
    public var height: CGFloat {
        get {
            return frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = height
            self.frame = frame
        }
    }
    
    public var width: CGFloat {
        get {
            return frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = width
            self.frame = frame
        }
    }
    
    public var y: CGFloat {
        get {
            return frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = y
            self.frame = frame
        }
    }
    
    public var x: CGFloat {
        get {
            return frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = x
            self.frame = frame
        }
    }
}
