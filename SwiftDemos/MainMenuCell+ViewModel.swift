//
//  MainMenuCell+ViewModel.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/17/22.
//

import SwiftUI

extension MainMenuCell {
    struct ViewModel {
        enum TableRow: String, Identifiable {
            var id: Self { self }
            case recipes = "Recipes Demo"
            case recursiveTreeSearch = "Recursive Tree Search"
            
            func description() -> String {
                var result = ""
                
                switch self {
                case .recipes:
                    result = "Swift UI Demo - Recipes"
                case .recursiveTreeSearch:
                    result = "Tree Data Structure search using Recursive Functions"
                }
                
                return result
            }
        }
        
        var row: TableRow
    }
}
