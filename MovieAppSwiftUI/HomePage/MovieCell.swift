//
//  MovieCell.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 10/01/25.
//
import SwiftUI
import SDWebImageSwiftUI

struct MovieCell: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            TitleMovieView(movie: movie)
            MovieGenre(movie: movie)
            VoteCountMovieView(movie: movie)
            WebImage(url: movie.posterURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 550)
                .clipShape(RoundedRectangle(cornerRadius: 85))
                .shadow(radius: 10)
                .padding(.all, 20)
        }
    }
}
