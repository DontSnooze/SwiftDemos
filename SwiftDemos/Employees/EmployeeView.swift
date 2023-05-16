//
//  EmployeeView.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/15/23.
//

import SwiftUI

struct EmployeeView: View {
    var viewModel: ViewModel
    var employee: Employee {
        viewModel.employee
    }
    
    var body: some View {
        List {
            HStack {
                Spacer()
                VStack {
                    ImageHelper.AsyncImageWithPlaceholder(urlString: employee.imageUrl, width: 240, height: 240)
                    Text("\(employee.firstName) \(employee.lastName)")
                }
                Spacer()
            }.listRowSeparator(.hidden)
            
            EmployeeViewDataCell(title: "ID", description: "\(employee.id)")
            EmployeeViewDataCell(title: "Email", description: employee.email)
            EmployeeViewDataCell(title: "Contact Number", description: employee.contactNumber)
            EmployeeViewDataCell(title: "Age", description: "\(employee.age)")
            EmployeeViewDataCell(title: "DOB", description: employee.dob)
            EmployeeViewDataCell(title: "Salary", description: "\(employee.salary)")
            EmployeeViewDataCell(title: "Address", description: employee.address)
        }
    }
}

struct EmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeView(viewModel: EmployeeView.ViewModel(employee: Employee.dummyEmployee))
    }
}

extension EmployeeView {
    struct EmployeeViewDataCell: View {
        let title: String
        let description: String
        var body: some View {
            HStack {
                Text(title)
                Spacer()
                Text(description)
            }.listRowSeparator(.hidden)
        }
    }
}
