//
//  EmployeesView.swift
//  SwiftDemos
//
//  Created by amostodman on 5/20/22.
//

import SwiftUI

struct EmployeesView: View {
    @ObservedObject var viewModel: ViewModel
    @State var isLoaded = false
    var isForTesting: Bool
    var body: some View {
        VStack {
            Text(viewModel.title)
            List(viewModel.employees) { employee in
                NavigationLink(destination: EmployeeView(viewModel: EmployeeView.ViewModel(employee: employee))) {
                    HStack {
                        ImageHelper.AsyncImageWithPlaceholder(urlString: employee.imageUrl)
                        Text("\(employee.firstName) \(employee.lastName)")
                            .accessibilityIdentifier("employees.cell.\(employee.id)")
                    }
                }
            }
        }.task {
            if !isLoaded {
                if isForTesting {
                    viewModel.populateEmployeesFromJSONFile(filename: "Employees")
                } else {
                    await viewModel.populateEmployees()
                }
                isLoaded = true
            }
        }
    }
}

struct EmployeesView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesView(viewModel: EmployeesView.ViewModel(), isForTesting: true)
    }
}
