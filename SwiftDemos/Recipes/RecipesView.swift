//
//  RecipesView.swift
//  SwiftDemos
//
//  Created by amostodman on 5/20/22.
//

import SwiftUI

struct RecipesView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        Text(viewModel.description)
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(viewModel: RecipesView.ViewModel())
    }
}
