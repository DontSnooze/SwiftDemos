//
//  Node.swift
//  SwiftDemos
//
//  Created by amostodman on 5/25/22.
//

import Foundation

class Node: ObservableObject, Identifiable {
    @Published var index: Int
    @Published var nodes: [Node]?
    var name: String {
        return "Node \(index)"
    }
    @Published var description = ""
    
    init(index: Int, nodes: [Node]? = nil, description: String = "") {
        self.index = index
        if let nodes = nodes {
            self.nodes = nodes
        }
        self.description = description
    }
    
    static func sampleRootNode() -> Node {
        let node1 = Node(index: 1, description: "Node 1 Description")
        let node2 = Node(index: 2, description: "Node 2 Description")
        let node3 = Node(index: 3, description: "Node 3 Description")
        
        node1.nodes = [node2, node3]
        
        let node4 = Node(index: 4, description: "Node 4 Description")
        let node5 = Node(index: 5, description: "Node 5 Description")
        let node6 = Node(index: 6, description: "Node 6 Description")
        
        node4.nodes = [node5, node6]
        
        let node7 = Node(index: 7, description: "Node 7 Description")
        let node8 = Node(index: 8, description: "Node 8 Description")
        let node9 = Node(index: 9, description: "Node 9 Description")
        let node10 = Node(index: 10, description: "Node 10 Description")
        
        node9.nodes = [node10]
        
        node7.nodes = [node8, node9]
        
        
        let nodes: [Node] = [
            node1,
            node4,
            node7
        ]
        
        let node = Node(index: 0, nodes: nodes, description: "Root Node")
        return node
    }
    
    func nodeWithIndex(_ index: Int, in node: Node) -> Node? {
        print("node.name: \(node.name)")
        
        if node.index == index {
            return node
        }
        
        for thisNode in node.nodes ?? [Node]() {
            print("in loop: thisNode.name: \(thisNode.name)")
            let index = nodeWithIndex(index, in: thisNode)
            
            if let index = index {
                return index
            } else {
                continue
            }
        }
        
        return nil
    }
}
