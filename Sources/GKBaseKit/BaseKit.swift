//
//  BaseKit.swift
//  GKBaseKit
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

public typealias FailureBlock = (ErrorResponse) -> ()

public final class BaseKit {

    private init() {} // noone should be able to init this class

    public class func initBaseKit(debug: DebugProtocol = DefaultDebug()) {
        let _ = BaseKit()
        BaseKitConfiguration.setup(with: EnvironmentConfiguration(debug: debug))
    }

    public class func isDebug() -> Bool {
        return BaseKitConfiguration.shared.debug.isDebug
    }

}
