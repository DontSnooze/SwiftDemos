//
//  RecursiveTreeSearchView+ViewModel.swift
//  SwiftDemos
//
//  Created by amostodman on 5/25/22.
//
import SwiftUI

extension RecursiveTreeSearchView {
    class ViewModel: ObservableObject {
        @Published var selectedIndexString: String = "0"
        @Published var rootNode = Node(index: 0)
        var selectedIndex: Int? {
            Int(selectedIndexString)
        }
        
        init() {
            rootNode = Node.sampleRootNode()
        }
        
        func searchResult() -> String {
            guard let selectedIndex = selectedIndex else {
                print("Could not get integer from: \(selectedIndexString)")
                return "Nil - Enter an integer from 0 to 10"
            }

            let nodeIndex: Int = selectedIndex
            
            let resultNode = rootNode.findNodeWithIndex(index: nodeIndex)
            
            print("Found node: \(resultNode?.description ?? "nil")")
            return resultNode?.description ?? "Nil - Enter an integer from 0 to 10"
        }
    }
}

