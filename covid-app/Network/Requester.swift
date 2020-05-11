//
//  Requester.swift
//  covid-app
//
//  Created by Diego Kamiha  on 11/05/20.
//  Copyright © 2020 kamiha. All rights reserved.
//

import RxSwift
import Foundation

typealias Parameters = [String: AnyHashable]
typealias HTTPHeaders = [String: String]

protocol Cancellable {
    func cancelRequest()
}

protocol Requester {
    func request<T: Decodable>(
        url: String,
        method: HTTPMethod,
        parameters: Parameters?,
        headers: HTTPHeaders?,
        completionHandler: @escaping (Response<T>) -> Void
    ) -> Cancellable

    func request(
        url: String,
        method: HTTPMethod,
        parameters: Parameters?,
        headers: HTTPHeaders?,
        completionHandler: @escaping (Response<Data>) -> Void
    ) -> Cancellable
}

protocol RxRequester {
    func request<T: Decodable>(
        url: String,
        method: HTTPMethod,
        parameters: Parameters?,
        headers: HTTPHeaders?
    ) -> Single<T>

    func request(
        url: String,
        method: HTTPMethod,
        parameters: Parameters?,
        headers: HTTPHeaders?
    ) -> Single<Data>
}

enum ApiError {
    case parsingError(String)
}
