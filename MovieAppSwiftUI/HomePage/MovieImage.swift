//
//  MovieImage.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 5/12/24.
//

import SwiftUI

struct MovieImage: View {
    
    var body: some View {
        HStack{
            Image(uiImage: UIImage.example)
                .resizable()
                .frame(width: 390, height: 390)
                .ignoresSafeArea()
                .background(Color.black)
                .cornerRadius(90)
        }
    }
}

#Preview {
    MovieImage()
}
