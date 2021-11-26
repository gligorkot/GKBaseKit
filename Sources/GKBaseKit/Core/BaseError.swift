//
//  BaseError.swift
//  GKBaseKit
//
//  Created by Gligor Kotushevski on 20/03/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

public protocol ErrorResponse {
    var title: String { get }
    var message: String { get }
    var debugDescription: String { get }
}

public protocol BaseError: Error {
    func toResponse() -> ErrorResponse
}

public protocol BaseErrorContentAdapter {
    associatedtype ErrorType

    static func adapt(_ error: ErrorType) -> ErrorResponse
}
