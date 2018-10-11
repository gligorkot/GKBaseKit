//
//  DefaultDebug.swift
//  GKBaseKit
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

public final class DefaultDebug: DebugProtocol {

    public init() {}

    public var isDebug: Bool {
        return _isDebugAssertConfiguration()
    }
}
