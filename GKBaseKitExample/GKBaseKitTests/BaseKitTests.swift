//
//  BaseKitTests.swift
//  GKBaseKitTests
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

import XCTest
import Nimble
@testable import GKBaseKit

class BaseKitTests: XCTestCase {

    override func tearDown() {
        BaseKitConfiguration.tearDownConfig()
    }

    func test_baseKitIsTrueByDefault() {
        BaseKit.initBaseKit()
        expect(BaseKitConfiguration.shared.debug).toNot(beNil())
        expect(BaseKit.isDebug()).to(beTrue())
    }

    func test_baseKitIsTrueWhenDebugProtocolReturnsTrue() {
        BaseKit.initBaseKit(debug: TrueDebug())
        expect(BaseKitConfiguration.shared.debug).toNot(beNil())
        expect(BaseKit.isDebug()).to(beTrue())
    }

    func test_baseKitIsFalseWhenDebugProtocolReturnsFalse() {
        BaseKit.initBaseKit(debug: FalseDebug())
        expect(BaseKitConfiguration.shared.debug).toNot(beNil())
        expect(BaseKit.isDebug()).to(beFalse())
    }
    
}
