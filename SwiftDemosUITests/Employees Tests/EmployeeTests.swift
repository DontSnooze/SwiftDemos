//
//  EmployeeTests.swift
//  SwiftDemosUITests
//
//  Created by Amos Todman on 10/11/23.
//

import XCTest

final class EmployeeTests: XCTestCase {
    let employeeScreen = EmployeeScreen()
    let app = XCUIApplication.app
    
    override func setUpWithError() throws {
        setupSnapshot(app)
        app.launch()
        
        navigateToEmployeesView()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFirstEmployeeId() throws {
        navigateToFirstEmployeeView()
        snapshot("04Employee")
        app.swipeUp()
        XCTAssertTrue(employeeScreen.firstId.waitForExistence(timeout: 10))
        XCTAssertTrue(employeeScreen.firstAddress.waitForExistence(timeout: 10))
        
    }
    
    func testLastEmployeeId() throws {
        navigateToLastEmployeeView()
        app.swipeUp()
        XCTAssertTrue(employeeScreen.lastId.waitForExistence(timeout: 10))
        XCTAssertTrue(employeeScreen.lastAddress.waitForExistence(timeout: 10))
    }

    func navigateToEmployeesView() {
        let menu = MainMenuScreen()
        XCTAssertTrue(menu.employeesCell.waitForExistence(timeout: 10))
        menu.employeesCell.tap()
    }
    
    func navigateToFirstEmployeeView() {
        let employeesScreen = EmployeesScreen()
        XCTAssertTrue(employeesScreen.firstCell.waitForExistence(timeout: 10))
        employeesScreen.firstCell.tap()
    }
    
    func navigateToLastEmployeeView() {
        let employeesScreen = EmployeesScreen()
        XCTAssertTrue(employeesScreen.firstCell.waitForExistence(timeout: 10))
        app.swipeUp()
        app.swipeUp()
        employeesScreen.lastCell.tap()
    }
}

