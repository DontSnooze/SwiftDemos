//
//  MainMenuView.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/17/22.
//

import SwiftUI

struct MainMenuView: View {
    @ObservedObject var viewModel: ViewModel
    var isForTesting = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(viewModel.tableRows) { row in
                    switch row {
                    case .employees:
                        MainMenuCell(viewModel: MainMenuCell.ViewModel(row: row)).onTapGesture {
                            viewModel.shouldShowEmployeesView = true
                        }
                    case .recursiveTreeSearch:
                        MainMenuCell(viewModel: MainMenuCell.ViewModel(row: row)).onTapGesture {
                            viewModel.shouldShowRecursiveTreeSearchView = true
                        }
                    }
                }

                NavigationLink(destination: EmployeesView(viewModel: EmployeesView.ViewModel(), isForTesting: isForTesting), isActive: $viewModel.shouldShowEmployeesView) {
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
