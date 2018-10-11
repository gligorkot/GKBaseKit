//
//  BaseKitConfiguration.swift
//  GKBaseKit
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

final class BaseKitConfiguration {

    private static let instance = BaseKitConfiguration()

    class var shared: BaseKitConfigurationProtocol {
        return BaseKitConfiguration.instance.configuration
    }

    private init() {}

    private var config: BaseKitConfigurationProtocol?

    private var configuration: BaseKitConfigurationProtocol {
        if let config = config {
            return config
        } else {
            preconditionFailure("GKBaseKit configuration must be setup before use")
        }
    }

    class func setup(with config: BaseKitConfigurationProtocol) {
        BaseKitConfiguration.instance.config = config
    }

    class func tearDownConfig() {
        BaseKitConfiguration.instance.config = nil
    }

}
