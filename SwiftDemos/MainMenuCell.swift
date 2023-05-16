//
//  MainMenuCell.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/17/22.
//

import SwiftUI

struct MainMenuCell: View {
    var viewModel: ViewModel
    private var rightChevronImage: some View {
        Image(systemName: "chevron.right").font(Font.system(.footnote).weight(.semibold))
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(viewModel.row.rawValue)
                    .font(.headline)
                    .padding(1.0)
                Text(viewModel.row.description())
                    .font(.subheadline)
                    .padding(1.0)
            }
            Spacer()
            rightChevronImage
        }
    }
}

struct MainMenuCell_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuCell(viewModel: MainMenuCell.ViewModel(row: .employees))
    }
}
