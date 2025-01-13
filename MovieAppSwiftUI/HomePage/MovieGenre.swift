//
//  MovieGenre.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

//
import SwiftUI

struct MovieGenre: View {
    @StateObject var viewModel = MovieViewModel()
    let movie: Movie
    
    var body: some View {
        HStack {
            VStack {
                Text(movie.genre_ids.compactMap{viewModel.genreMap[$0] }.joined(separator: " | "))
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding(.all, 8)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray, lineWidth: 2)
            )
            .shadow(radius: 16)
        } .frame(maxWidth: .infinity, alignment: .center)
            .onAppear {
                viewModel.fetchData()
            }
    }
}


