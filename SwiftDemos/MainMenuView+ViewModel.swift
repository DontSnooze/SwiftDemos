//
//  MainMenuView+ViewModel.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/17/22.
//

import Foundation

extension MainMenuView {
    class ViewModel: ObservableObject {
        var title = "Swift Demos"
        @Published var shouldShowRecipesView = false
        @Published var shouldShowRecursiveTreeSearchView = false
        var tableRows: [MainMenuCell.ViewModel.TableRow] = [
            .recipes,
            .recursiveTreeSearch
        ]
    }
}
