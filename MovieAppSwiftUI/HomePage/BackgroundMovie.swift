//
//  BackgroundMovie.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 5/12/24.
//
import SwiftUI

struct BackgroundMovie: View {
    
    var body: some View {
        HStack{
            Image(uiImage: UIImage.example)
                .resizable()
                .frame(height: 500)
                .cornerRadius(90)
                .padding(.all, 20)
        }
    }
}

#Preview {
    BackgroundMovie()
}
