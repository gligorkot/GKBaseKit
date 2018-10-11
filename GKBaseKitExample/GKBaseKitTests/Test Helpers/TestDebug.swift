//
//  TestDebug.swift
//  GKBaseKitTests
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

@testable import GKBaseKit

final class TrueDebug: DebugProtocol {
    var isDebug: Bool {
        return true
    }
}

final class FalseDebug: DebugProtocol {
    var isDebug: Bool {
        return false
    }
}
