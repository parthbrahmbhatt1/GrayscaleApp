//
//  SelectOrCaptureView.swift
//  GrayscaleApp
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

import SwiftUI
import PhotosUI

struct SelectOrCaptureView: View {
    @StateObject private var viewModel = ImageProcessorViewModel()
    @State private var showCamera = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                if let processed = viewModel.processedImage {
                    ImageComparisonView(
                        originalImage: processed.original,
                        grayscaleImage: processed.grayscale
                    )
                } else {
                    Text("Select or capture an image")
                        .foregroundColor(.gray)
                }

                PhotosPicker("Choose from Library", selection: $viewModel.selectedItem, matching: .images)
                    .padding()

                Button("Capture Photo") {
                    showCamera = true
                }
            }
            .navigationTitle("Grayscale App")
            .sheet(isPresented: $showCamera) {
                CameraPicker { image in
                    viewModel.setCapturedImage(image)
                }
            }
        }
    }
}

#Preview {
    SelectOrCaptureView()
}
