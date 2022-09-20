//
//  NodeView.swift
//  SwiftDemos
//
//  Created by amostodman on 5/25/22.
//

import SwiftUI

struct NodeView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                VStack {
                    Text("Node \(viewModel.node.index)")
                        .font(.title)
                    Text(viewModel.node.description)
                        .font(.subheadline)
                }
                Spacer()
            }
            
            List {
                Section(header: Text("Edit node description")) {
                    TextField("Description", text: $viewModel.node.description)
                        .padding()
                        .border(.secondary)
                        .padding()
                }
                Section(header: Text("Node Data Structure - Children")) {
                    if let nodes = viewModel.node.nodes {
                        ForEach(nodes) { node in
                            NodeCell(viewModel: NodeCell.ViewModel(node: node))
                        }
                    }
                }
            }
        }.onAppear() {
            self.viewModel.objectWillChange.send()
        }
    }
}

struct NodeView_Previews: PreviewProvider {
    static var previews: some View {
        let nodes = [Node(index: 1), Node(index: 2)]
        let rootNode = Node(index: 0, nodes: nodes, description: "Root Node")
        NodeView(viewModel: NodeView.ViewModel(node: rootNode))
    }
}
