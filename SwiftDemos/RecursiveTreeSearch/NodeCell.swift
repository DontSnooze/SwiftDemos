//
//  NodeCell.swift
//  SwiftDemos
//
//  Created by amostodman on 5/25/22.
//

import SwiftUI

struct NodeCell: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        NavigationLink(destination: NodeView(viewModel: NodeView.ViewModel(node: viewModel.node))) {
            VStack(alignment: .leading) {
                Text("Node: \(viewModel.indexString)")
                    .font(.headline)
                    .padding(1.0)
                Text(String(viewModel.node.description))
                    .font(.subheadline)
                    .padding(1.0)
            }
        }
    }
}

struct NodeCell_Previews: PreviewProvider {
    static var previews: some View {
        let node = RecursiveTreeSearchView.ViewModel().rootNode
        NodeCell(viewModel: NodeCell.ViewModel(node: node))
    }
}
