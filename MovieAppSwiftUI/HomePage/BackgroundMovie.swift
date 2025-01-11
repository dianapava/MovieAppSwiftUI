//
//  BackgroundMovie.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 5/12/24.
//
import SwiftUI
import SDWebImageSwiftUI

struct BackgroundMovie: View {
    let movieList: [Movie]
    @Binding var index: Int
    var body: some View {
        WebImage(url: movieList.isEmpty ? nil : movieList[index].posterURL)
            .blur(radius: 30)
            .animation(.easeInOut(duration: 0.5), value: index)
    }
}

