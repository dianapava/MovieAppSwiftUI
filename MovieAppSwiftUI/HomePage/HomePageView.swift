//
//  ContentView.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

import SwiftUI

struct HomePageView: View {
    
    @StateObject var viewModel = MovieViewModel()
    @State private var index: Int = 0
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            BackgroundMovie(movieList: viewModel.movieList, index: $index)
                .ignoresSafeArea()
            VStack{
                ToolbarHomePageView()
                MovieListView(movieList: viewModel.movieList, index: { index in
                    self.index = index
                }, currentIndex: $index)
            }
        }
        .onAppear {
            viewModel.fetchData()
        }
        
    }
}

#Preview {
    HomePageView()
}
