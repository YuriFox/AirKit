//  Copyright © 2021 Yurii Lysytsia. All rights reserved.

#if canImport(UIKit)
import class UIKit.UIGraphicsImageRenderer
import class UIKit.UIGraphicsImageRendererFormat
import struct UIKit.CGRect
import struct UIKit.CGSize
import struct UIKit.CGFloat

public extension UIGraphicsImageRenderer {
    /// Ceate a new instance if a set of drawing attributes that represents the configuration of an image renderer context.
    convenience init(bounds: CGRect, scale: CGFloat, opaque: Bool = false) {
        let format = UIGraphicsImageRendererFormat(scale: scale, opaque: opaque)
        self.init(bounds: bounds, format: format)
    }
    
    /// Ceate a new instance if a set of drawing attributes that represents the configuration of an image renderer context.
    convenience init(size: CGSize, scale: CGFloat, opaque: Bool = false) {
        let format = UIGraphicsImageRendererFormat(scale: scale, opaque: opaque)
        self.init(size: size, format: format)
    }
}
#endif
