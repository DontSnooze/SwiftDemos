//
//  BasicImageView.swift
//  SwiftDemos
//
//  Created by amostodman on 5/26/22.
//

import SwiftUI
import PDFKit

struct BasicImageView: View {
    var body: some View {
        let image = UIImage(named: "RecursiveTreeSearchDiagram") ?? UIImage()
        PhotoDetailView(image: image)
    }
}

struct BasicImageView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(image: UIImage(named: "RecursiveTreeSearchDiagram") ?? UIImage())
    }
}


struct PhotoDetailView: UIViewRepresentable {
    let image: UIImage

    func makeUIView(context: Context) -> PDFView {
        let view = PDFView()
        view.document = PDFDocument()
        guard let page = PDFPage(image: image) else { return view }
        view.document?.insert(page, at: 0)
        view.autoScales = true
        return view
    }

    func updateUIView(_ uiView: PDFView, context: Context) {
        // empty
    }
}
