//
//  RecursiveTreeSearchView.swift
//  SwiftDemos
//
//  Created by amostodman on 5/25/22.
//

import SwiftUI

struct RecursiveTreeSearchView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        VStack {
            Text("Find node by index and display its description")
                .font(.title)
            
            VStack(alignment: .leading) {
                Text("Enter a number from 0 to 10").font(.caption)
                TextField("Number from 0 - 10", text: $viewModel.selectedIndexString)
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(.secondary)
                    .padding(.top, -10)
                    .accessibilityIdentifier("IndexEntryTextField")
            }.padding()
            
            Text("Result: \(viewModel.searchResult())")
                .accessibilityIdentifier("ResultLabel")
            
            List {
                Section(header: Text("Node Data Structure - Root Node")) {
                    NodeCell(viewModel: NodeCell.ViewModel(node: viewModel.rootNode))
                }
                Section(header: Text("Node Data Structure - Visual")) {
                    NavigationLink(destination: BasicImageView()) {
                        VStack(alignment: .leading) {
                            Text("Node Structure Diagram")
                                .font(.headline)
                                .padding(1.0)
                            Text("Visualize the data structure of the nodes")
                                .font(.subheadline)
                                .padding(1.0)
                        }
                    }
                }
            }
        }.onAppear() {
            self.viewModel.objectWillChange.send()
        }
    }
}

struct RecursiveTreeSearchView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecursiveTreeSearchView.ViewModel()
        RecursiveTreeSearchView(viewModel: model)
    }
}
