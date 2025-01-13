//
//  MoiveImageView.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 10/01/25.
//
import SwiftUI

enum ImageType: String {
    case xxx
    case example
}

import UIKit

extension UIImage {
    convenience init(imageType: ImageType) {
        self.init(named: imageType.rawValue)!
    }
}

struct MoiveImageView: View {
    
    let imageType: ImageType
    
    var body: some View {
        Image(uiImage: UIImage(imageType: imageType))
            .resizable()
    }
}
