//
//  Image+Helper.swift
//  SwiftDemos
//
//  Created by Amos Todman on 5/15/23.
//

import SwiftUI

struct ImageHelper {
    struct AsyncImageWithPlaceholder: View {
        let urlString: String
        var width = 120.0
        var height = 120.0
        var cornerRadius = 25.0
        var errorColor = Color.red.opacity(0.5)
        var placeholderColor = Color.blue.opacity(0.5)
        var body: some View {
            AsyncImage(url: URL(string: urlString)) { phase in
                if let image = phase.image {
//                    image // Displays the loaded image.
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: width, maxHeight: height)
                } else if phase.error != nil {
                    errorColor // Indicates an error.
                } else {
                    ZStack{
                        placeholderColor // Acts as a placeholder.
                        ProgressView()
                    }
                }
            }.frame(width: width, height: height) .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        }
    }
}
