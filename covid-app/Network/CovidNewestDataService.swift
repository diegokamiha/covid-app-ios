//
//  CovidNewestDataService.swift
//  covid-app
//
//  Created by Diego Kamiha  on 11/05/20.
//  Copyright © 2020 kamiha. All rights reserved.
//

import RxSwift

protocol CovidNewestDataRequestable: AnyObject {
    func getNewestData() -> Single<DailyReport>
}
