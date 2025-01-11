//
//  ToolBarHomePage.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//
import SwiftUI

struct TitleMovieView: View {
    
    let movie: Movie
    
    var body: some View {
        HStack{
            Text(movie.original_title)
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .shadow(radius: 15)
                .padding()
                .animation(.easeInOut(duration: 0.5), value: movie.original_title)
            Spacer()
        }.safeAreaPadding(.horizontal, 50)
    }
}
