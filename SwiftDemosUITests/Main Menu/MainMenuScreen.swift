//
//  MainMenuScreen.swift
//  SwiftDemosUITests
//
//  Created by amostodman on 9/22/22.
//

import Foundation
import XCTest

class MainMenuScreen {
    let treeSearchCell = XCUIApplication.app.tables.staticTexts["Recursive Tree Search"]
    
    func tableRow(index: Int) -> XCUIElement {
        return XCUIApplication.app.tables.cells.element(boundBy: index)
    }
    
}
