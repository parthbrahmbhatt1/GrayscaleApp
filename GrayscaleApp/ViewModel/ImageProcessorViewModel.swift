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
    
    @Published var processedImage: ProcessedImage?
    
    func setCapturedImage(_ image: UIImage) {
        guard let grayscale = GrayscaleImageConverter.convertToGrayscale(image: image) else {
            print("Grayscale conversion failed.")
            return
        }
        
        self.processedImage = ProcessedImage(original: image, grayscale: grayscale)
    }
}
