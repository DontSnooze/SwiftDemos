//
//  NodeView+ViewModel.swift
//  SwiftDemos
//
//  Created by amostodman on 5/25/22.
//

import Foundation

extension NodeView {
    class ViewModel: ObservableObject {
        @Published var shouldShowChildView = false
        @Published var node: Node
        @Published var description = ""
        
        init(node: Node) {
            self.node = node
        }
    }
}
