//
//  MainMenuTests.swift
//  SwiftDemosUITests
//
//  Created by amostodman on 9/22/22.
//

import XCTest

final class MainMenuTests: XCTestCase {
    let menu = MainMenuScreen()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let app = XCUIApplication.app
        setupSnapshot(app)
        app.launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTreeSearchCellExists() throws {
        XCTAssertTrue(menu.treeSearchCell.waitForExistence(timeout: 10))
        snapshot("01MainMenu")
    }

    func notestLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
