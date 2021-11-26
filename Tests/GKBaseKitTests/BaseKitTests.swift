//
//  BaseKitTests.swift
//  GKBaseKitTests
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

import XCTest
@testable import GKBaseKit

class BaseKitTests: XCTestCase {

    override func tearDown() {
        BaseKitConfiguration.tearDownConfig()
    }

    func test_baseKitIsTrueByDefault() {
        BaseKit.initBaseKit()
        XCTAssertNotNil(BaseKitConfiguration.shared.debug)
        XCTAssertTrue(BaseKit.isDebug())
    }

    func test_baseKitIsTrueWhenDebugProtocolReturnsTrue() {
        BaseKit.initBaseKit(debug: TrueDebug())
        XCTAssertNotNil(BaseKitConfiguration.shared.debug)
        XCTAssertTrue(BaseKit.isDebug())
    }

    func test_baseKitIsFalseWhenDebugProtocolReturnsFalse() {
        BaseKit.initBaseKit(debug: FalseDebug())
        XCTAssertNotNil(BaseKitConfiguration.shared.debug)
        XCTAssertFalse(BaseKit.isDebug())
    }
    
}
