//  Copyright © 2023 Yurii Lysytsia. All rights reserved.

import Foundation

public extension TimeZone {
    /// Returns Coordinated Universal Time (UTC).
    static let utc: TimeZone = {
        if #available(iOS 16, *) {
            return .gmt
        } else {
            return .init(identifier: "UTC")! // swiftlint:disable:this force_unwrapping
        }
    }()
}
