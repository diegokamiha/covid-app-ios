//
//  DailyReport.swift
//  covid-app
//
//  Created by Diego Kamiha  on 11/05/20.
//  Copyright © 2020 kamiha. All rights reserved.
//

import Foundation

struct DailyReport: Codable, Equatable {
    let country: String
    let countryCode: String
    let province: String
    let city: String
    let cityCode: String
    let lat: String
    let lon: String
    let cases: Int
    let status: String
    let date: Date
}
