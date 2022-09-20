//
//  SwiftDemosApp.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/17/22.
//

import SwiftUI

@main
struct SwiftDemosApp: App {
    var body: some Scene {
        WindowGroup {
            MainMenuView(viewModel: MainMenuView.ViewModel())
        }
    }
}
