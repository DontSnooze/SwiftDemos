//
//  Constants.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/15/23.
//

import Foundation

struct Constants {
    struct Urls {
        
        // hub.dummyapis.com has a certificate issue and won't load on sim.
        // Which means it wont work in the CICD pipeline on sim
        // Using link to Employees.json on the gh repo for now
        // static let employeesUrl = URL(string: "https://hub.dummyapis.com/employee?noofRecords=10&idStarts=1001")!
        
        static let employeesUrl = URL(string: "https://github.com/DontSnooze/SwiftDemos/raw/refs/heads/main/SwiftDemos/Helpers/Employees.json")!
    
        static let employeeUrl = URL(string: "https://hub.dummyapis.com/employee?noofRecords=1&idStarts=1001")!
        static let singleListUrl = URL(string: "https://hub.dummyapis.com/singlelistwithid?text=Test&noofRecords=10")!
    }
}
