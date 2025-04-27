//
//  ImageComparisonView.swift
//  GrayscaleApp
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

import SwiftUI

struct ImageComparisonView: View {
    let originalImage: UIImage
    let grayscaleImage: UIImage

    var body: some View {
        HStack(spacing: 16) {
            VStack {
                Text("Original")
                Image(uiImage: originalImage)
                    .resizable()
                    .scaledToFit()
            }

            VStack {
                Text("Grayscale")
                Image(uiImage: grayscaleImage)
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(height: 300)
    }
}
