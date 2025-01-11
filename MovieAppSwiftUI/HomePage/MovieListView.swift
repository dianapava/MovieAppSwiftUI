//
//  MovieImage.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 5/12/24.
//
import Combine
import SwiftUI
import SDWebImageSwiftUI

struct MovieListView: View {
    let movieList: [Movie]
    var index: ((Int) -> Void)
    @Binding var currentIndex: Int
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(Array(movieList.enumerated()), id: \.1.id) { index, movie in
                MovieCell(movie: movie)
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode:.always))
        .onChange(of: currentIndex) { oldValue, newValue in
            index(newValue)
        }
    }
}

