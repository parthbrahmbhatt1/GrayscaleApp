//
//  ImageProcessorViewModel.swift
//  GrayscaleApp
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

import SwiftUI
import PhotosUI
import GrayscaleSDK

final class ImageProcessorViewModel: ObservableObject {
    
    @Published var selectedItem: PhotosPickerItem? {
        didSet {
            Task
            {
                await loadImageFromPicker()
            }
        }
    }
    
    @Published var processedImage: ProcessedImage?
    
    func setCapturedImage(_ image: UIImage) {
        guard let grayscale = GrayscaleImageConverter.convertToGrayscale(image: image.normalized()) else {
            print("Grayscale conversion failed.")
            return
        }
        
        self.processedImage = ProcessedImage(original: image, grayscale: grayscale)
    }
    
    private func loadImageFromPicker() async {
        guard let item = selectedItem,
              let data = try? await item.loadTransferable(type: Data.self),
              let image = UIImage(data: data) else {
            return
        }
        
        await MainActor.run {
            self.setCapturedImage(image)
        }
    }
}
