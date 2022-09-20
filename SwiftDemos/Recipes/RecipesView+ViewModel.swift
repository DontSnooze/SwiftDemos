//
//  RecipesView+ViewModel.swift
//  SwiftDemos
//
//  Created by amostodman on 5/20/22.
//

import Foundation
import SwiftUI

extension RecipesView {
    class ViewModel: ObservableObject {
        let title = "Recipes"
        @Published var description: String = ""
    }
}
