//
//  EnvironmentConfiguration.swift
//  GKBaseKit
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

final class EnvironmentConfiguration: BaseKitConfigurationProtocol {

    private let _debug: DebugProtocol

    init(debug: DebugProtocol) {
        self._debug = debug
    }

    var debug: DebugProtocol {
        return _debug
    }

}
