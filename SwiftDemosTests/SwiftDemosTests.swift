//
//  SwiftDemosTests.swift
//  SwiftDemosTests
//
//  Created by Amos Todman on 5/17/22.
//

import XCTest
@testable import SwiftDemos

class SwiftDemosTests: XCTestCase {
    private var viewModel: RecursiveTreeSearchView.ViewModel!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = RecursiveTreeSearchView.ViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFindNodeWithIndex() throws {
        (0 ..< 5).forEach({ _ in
            let index = Int.random(in: 1 ... 10)
            
            guard let node = viewModel.rootNode.findNodeWithIndex(index: index) else {
                XCTFail("Node was nil")
                return
            }
            
            let expectedNodeDescription = "Node \(index) Description"
            XCTAssertEqual(node.description, expectedNodeDescription)
        })
    }
}
