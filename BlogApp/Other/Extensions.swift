//
//  Extensions.swift
//  BlogApp
//
//  Created by Trung Nguyễn Quốc on 26/07/2023.
//

import Foundation
import UIKit

extension UIView {
    var width: CGFloat {
        frame.size.width
    }
    
    var height : CGFloat {
        frame.size.height
    }
    
    var left: CGFloat {
        frame.origin.x
    }
    var right: CGFloat {
        left + width
    }
    var top: CGFloat {
        frame.origin.y
    }
    var bottom: CGFloat {
        top + height
    }
    
}
