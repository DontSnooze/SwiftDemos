//
//  Employee.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/15/23.
//

import Foundation

struct Employee: Decodable, Identifiable {
    let id : Int
    let imageUrl : String
    let firstName : String
    let lastName : String
    let email : String
    let contactNumber : String
    let age : Int
    let dob : String
    let salary : Double
    let address : String
    
    static let dummyEmployee = Employee(id: 1001, imageUrl: "https://hub.dummyapis.com/Image?text=DE&height=120&width=120", firstName: "Employee", lastName: "One", email: "Employee.One@employee.one", contactNumber: "4541194151", age: 36, dob: "20/05/1987", salary: 1.0, address: "Address1")
}


