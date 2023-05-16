//
//  MainMenuCell+ViewModel.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/17/22.
//

import SwiftUI

extension MainMenuCell {
    struct ViewModel {
        var row: TableRow
        
        enum TableRow: String, Identifiable {
            var id: Self { self }
            case employees = "Employees Swift/SwiftUI and Codable Demo"
            case recursiveTreeSearch = "Swift/SwiftUI Recursive Tree Search"
            
            func description() -> String {
                var result = ""
                
                switch self {
                case .employees:
                    result = "SwiftUI Demo of populating some fake Employee data from an online REST API using Codable"
                case .recursiveTreeSearch:
                    result = "Tree Data Structure search using Recursive Functions, Swift and SwiftUI"
                }
                
                return result
            }
        }
    }
}
