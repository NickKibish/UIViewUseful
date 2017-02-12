//
//  UIButton+ImagePosition.swift
//  Pods
//
//  Created by Nick Kibish on 2/12/17.
//
//

import UIKit

/// Type of image position
///
/// - top: image is over the title
/// - bottom: image is under the title
/// - left: image is left to the title
/// - right: image is right to the title
public enum UIButtonImagePosition {
    case top, bottom, left, right
    
    var isVertical: Bool {
        return self == .top || self == .bottom
    }
}

extension UIButton {
    /// Set image position, relative to the title
    ///
    /// - Parameters:
    ///   - position: type of image position
    ///   - padding: padding betwene image and title. Default is 6
    public func setImagePosition(position: UIButtonImagePosition, padding: CGFloat = 6) {
        let imageSize = imageView?.frame.size ?? CGSize.zero
        let titleSize = titleLabel?.frame.size ?? CGSize.zero
        
        let totalSideSize = (position.isVertical ? imageSize.height + titleSize.height : imageSize.width + titleSize.width) + padding
        
        switch position {
        case .top:
            setImageOverTitle(totalHeight: totalSideSize, imageSize: imageSize, titleSize: titleSize)
        case .bottom:
            setImageUnderTitle(totalHeight: totalSideSize, imageSize: imageSize, titleSize: titleSize)
        case .left:
            break
        case .right:
            setImageRightToTitle(totalWidth: totalSideSize, imageSize: imageSize, titleSize: titleSize)
        }
    }
    
    private func setImageOverTitle(totalHeight: CGFloat, imageSize: CGSize, titleSize: CGSize) {
        imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -titleSize.width)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(totalHeight - titleSize.height), right: 0)
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: titleSize.height, right: 0)
    }
    
    private func setImageUnderTitle(totalHeight: CGFloat, imageSize: CGSize, titleSize: CGSize) {
        imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -titleSize.width)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: (totalHeight - titleSize.height), right: 0)
        contentEdgeInsets = UIEdgeInsets(top: titleSize.height, left: 0, bottom: 0, right: 0)
    }
    
    private func setImageLeftToTitle(totalWidth: CGFloat, imageSize: CGSize, titleSize: CGSize) {
        imageEdgeInsets = UIEdgeInsets(top: 0, left: -(totalWidth - imageSize.width), bottom: 0, right: 0)
        //    titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(totalHeight - titleSize.height), right: 0)
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: titleSize.height, right: 0)
    }
    
    private func setImageRightToTitle(totalWidth: CGFloat, imageSize: CGSize, titleSize: CGSize) {
        imageEdgeInsets = UIEdgeInsets(top: 0, left: totalWidth, bottom: 0, right: 0)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: totalWidth)
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
