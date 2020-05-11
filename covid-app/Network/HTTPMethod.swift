//
//  HTTPMethod.swift
//  covid-app
//
//  Created by Diego Kamiha  on 11/05/20.
//  Copyright © 2020 kamiha. All rights reserved.
//

import Foundation

enum HTTPMethod: String, Codable {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}
