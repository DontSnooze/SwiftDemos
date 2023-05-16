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
    var body: some View {
        VStack {
            Text(viewModel.title)
            List(viewModel.employees) { employee in
                NavigationLink(destination: EmployeeView(viewModel: EmployeeView.ViewModel(employee: employee))) {
                    HStack {
                        ImageHelper.AsyncImageWithPlaceholder(urlString: employee.imageUrl)
                        Text(employee.firstName)
                        Text(employee.lastName)
                    }
                }
            }
        }.task {
            if !isLoaded {
                await viewModel.populateEmployees()
                isLoaded = true
            }
        }
    }
}

struct EmployeesView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesView(viewModel: EmployeesView.ViewModel())
    }
}
