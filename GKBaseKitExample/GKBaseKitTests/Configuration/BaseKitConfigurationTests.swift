//
//  BaseKitConfigurationTests.swift
//  GKBaseKitTests
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

import XCTest
import Nimble
@testable import GKBaseKit

class BaseKitConfigurationTests: XCTestCase {

    override func tearDown() {
        BaseKitConfiguration.tearDownConfig()
    }

    func test_configurationFatalErrorIfNotSetup() {
        expect { _ = BaseKitConfiguration.shared }.to(throwAssertion())
    }

}
