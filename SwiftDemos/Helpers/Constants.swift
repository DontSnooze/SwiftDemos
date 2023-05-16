//
//  Constants.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/15/23.
//

import Foundation

struct Constants {
    struct Urls {
        static let employeesUrl = URL(string: "https://hub.dummyapis.com/employee?noofRecords=10&idStarts=1001")!
        static let employeeUrl = URL(string: "https://hub.dummyapis.com/employee?noofRecords=1&idStarts=1001")!
        static let singleListUrl = URL(string: "https://hub.dummyapis.com/singlelistwithid?text=Test&noofRecords=10")!
    }
}
