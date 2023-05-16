//
//  EmployeesView+ViewModel.swift
//  SwiftDemos
//
//  Created by amostodman on 5/20/22.
//

import Foundation
import SwiftUI

extension EmployeesView {
    @MainActor
    class ViewModel: ObservableObject {
        let title = "Employees"
        @Published var employees = [Employee]()
        
        func populateEmployees() async {
            do {
                let response = try await WebService().get(url: Constants.Urls.employeesUrl) { data in
                                    return try? JSONDecoder().decode([Employee].self, from: data)
                                }
                self.employees = response
            } catch {
                print("\(error.localizedDescription)")
            }
        }
    }
}
