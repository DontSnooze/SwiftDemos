//
//  EmployeesTests.swift
//  SwiftDemosUITests
//
//  Created by Amos Todman on 5/16/23.
//

import XCTest

final class EmployeesTests: XCTestCase {
    let employeesScreen = EmployeesScreen()
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
    
    func testfirstCellExists() throws {
        sleep(10)
        XCTAssertTrue(employeesScreen.firstCell.waitForExistence(timeout: 10))
        snapshot("03Employees")
    }
    
    func testLastCellExists() throws {
        sleep(10)
        app.swipeUp()
        app.swipeUp()
        XCTAssertTrue(employeesScreen.lastCell.waitForExistence(timeout: 10))
    }

    func navigateToEmployeesView() {
        let menu = MainMenuScreen()
        XCTAssertTrue(menu.employeesCell.waitForExistence(timeout: 10))
        menu.employeesCell.tap()
    }
}
