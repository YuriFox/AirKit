//  Copyright © 2021 Yurii Lysytsia. All rights reserved.

import XCTest
@testable import AirFoundation

final class BundleTests: XCTestCase {
    
    // MARK: - Properties
    
    private let bundle = Bundle(identifier: "dev.lysytsia.airkit")!
    private let testsBundle = Bundle(identifier: "dev.lysytsia.airkit.tests")!
    
    // MARK: - Tests
    
    func testResources() {
        XCTAssertNoThrow(try testsBundle.data(filename: "swift-decode", withExtenson: "json"))
        XCTAssertThrowsError(try bundle.data(filename: "not-found", withExtenson: "txt"))
    }
    
    func testInfo() {
        let info = bundle.info
        XCTAssertEqual(info.name, "AirKit")
        XCTAssertEqual(info.displayName, "Unknown")
        XCTAssertEqual(info.identifier, "dev.lysytsia.airkit")
        XCTAssertNotEqual(info.buildVersion, "0")
        XCTAssertNotEqual(info.buildVersionShort, "0.0.0")
        
        XCTAssertEqual(bundle.infoBuildVersion.localizedDescription, info.buildVersionShort)
    }
    
    func testEnvironment() {
        XCTAssertEqual(bundle.currentEnvironment, .debug)
    }
    
}
