//  Copyright © 2021 Yurii Lysytsia. All rights reserved.

import UIKit

// MARK: - Extensions | Scrolls

public extension UIScrollView {
    /// Returns progress of vertical scrolling. Possible value in the range of `0` and `1`.
    var verticalScrollProgress: CGFloat {
        let progress = (contentOffset.y + contentInset.top) / (contentSize.height - bounds.height + contentInset.vertical)
        return progress.clamped(lowerBound: 0, upperBound: 1)
    }
    
    /// Returns progress of horizontal scrolling. Possible value in the range of `0` and `1`.
    var horizontalScrollProgress: CGFloat {
        let progress = (contentOffset.x + contentInset.left) / (contentSize.width - bounds.width + contentInset.horizontal)
        return progress.clamped(lowerBound: 0, upperBound: 1)
    }
    
    /// Sets the offset of the scroll view to the top-most content offset.
    func scrollToTop(animated: Bool) {
        let offset = CGPoint(x: contentOffset.x, y: -contentInset.top)
        setContentOffset(offset, animated: animated)
    }

    /// Sets the offset of the scroll view to the left-most content offset.
    func scrollToLeft(animated: Bool) {
        let offset = CGPoint(x: -contentInset.left, y: contentOffset.y)
        setContentOffset(offset, animated: animated)
    }

    /// Sets the offset of the scroll view to the bottom-most content offset.
    func scrollToBottom(animated: Bool) {
        let offset = CGPoint(x: contentOffset.x, y: max(0, contentSize.height - bounds.height) + contentInset.bottom)
        setContentOffset(offset, animated: animated)
    }

    /// Sets the offset of the scroll view to the right-most content offset.
    func scrollToRight(animated: Bool) {
        let offset = CGPoint(x: max(0, contentSize.width - bounds.width) + contentInset.right, y: contentOffset.y)
        setContentOffset(offset, animated: animated)
    }
}
