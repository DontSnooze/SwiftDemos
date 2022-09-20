//
//  MainMenuView.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/17/22.
//

import SwiftUI

struct MainMenuView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(viewModel.tableRows) { row in
                    switch row {
                    case .recipes:
                        MainMenuCell(viewModel: MainMenuCell.ViewModel(row: row)).onTapGesture {
                            viewModel.shouldShowRecipesView = true
                        }
                    case .recursiveTreeSearch:
                        MainMenuCell(viewModel: MainMenuCell.ViewModel(row: row)).onTapGesture {
                            viewModel.shouldShowRecursiveTreeSearchView = true
                        }
                    }
                }

                NavigationLink(destination: RecipesView(viewModel: RecipesView.ViewModel()), isActive: $viewModel.shouldShowRecipesView) {
                    EmptyView()
                }
                let model = RecursiveTreeSearchView.ViewModel()
                
                NavigationLink(destination: RecursiveTreeSearchView(viewModel: model), isActive: $viewModel.shouldShowRecursiveTreeSearchView) {
                    EmptyView()
                }
            }
            .padding(.all)
            .navigationTitle(viewModel.title)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(viewModel: MainMenuView.ViewModel())
    }
}
