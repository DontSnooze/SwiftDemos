//
//  EmployeeScreen.swift
//  SwiftDemosUITests
//
//  Created by Amos Todman on 10/11/23.
//

import Foundation
import XCTest

class EmployeeScreen {
    let firstId = XCUIApplication.app.collectionViews.staticTexts["1001"]
    let lastId = XCUIApplication.app.collectionViews.staticTexts["1010"]
    let firstAddress = XCUIApplication.app.collectionViews.staticTexts["Address1"]
    let lastAddress = XCUIApplication.app.collectionViews.staticTexts["Address10"]
}
