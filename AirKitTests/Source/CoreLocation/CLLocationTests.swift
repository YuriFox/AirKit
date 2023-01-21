//  Copyright © 2021 Yurii Lysytsia. All rights reserved.

import XCTest
@testable import AirKit

class CLLocationTests: XCTestCase {
    
    func testInits() {
        let coordinate = CLLocationCoordinate2D(latitude: 0.5, longitude: 0.5)
        let location = CLLocation(coordinate: coordinate)
        XCTAssertEqual(location.coordinate, coordinate)
    }
    
}
