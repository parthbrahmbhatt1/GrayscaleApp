//
//  UIImage+Normalize.swift
//  GrayscaleApp
//
//  Created by Brahmbhatt, Parth (P.) on 4/27/25.
//

import UIKit

extension UIImage {
    func normalized() -> UIImage {
        guard imageOrientation != .up else { return self }

        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(in: CGRect(origin: .zero, size: size))
        let normalizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return normalizedImage ?? self
    }
}
