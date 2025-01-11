//
//  VoteCountMovieView.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 10/01/25.
//

import SwiftUI

struct VoteCountMovieView: View {
    let movie: Movie
    
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .frame(width: 10)
                .foregroundColor(.yellow)
            Text(String(movie.vote_count))
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .shadow(radius: 15)
                .padding()
        } .padding(.trailing, 200)
    }
}
