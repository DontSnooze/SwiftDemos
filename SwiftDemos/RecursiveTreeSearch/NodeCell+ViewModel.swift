//
//  NodeCell+ViewModel.swift
//  SwiftDemos
//
//  Created by amostodman on 5/25/22.
//

import SwiftUI

extension NodeCell {
    class ViewModel: ObservableObject {
        @Published var node: Node
        var description: String {
            node.description
        }
        var indexString: String {
            String(node.index)
        }
        
        init(node: Node) {
            self.node = node
        }
    }
}
