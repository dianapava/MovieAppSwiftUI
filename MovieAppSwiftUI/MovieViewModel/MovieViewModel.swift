//
//  MovieViewModel.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 5/12/24.
//

import Foundation
import SDWebImageSwiftUI
import Combine

class MovieViewModel: ObservableObject {

    @Published var movieList: [Movie] = []
    @Published var genreList: [GenreId] = []
    @Published var genreMap: [Int: String] = [:]
    @Published var errorMessage: String?

    private lazy var respository : MovieRepository = {
        let apiClient = ApiClient()
        return MovieRepository(apiClient: apiClient)
    }()
    
    func fetchData() {
        let group = DispatchGroup()
        var fetchError: Error?
        var fetchedMovies: [Movie] = []
        var fetchedGenres: [GenreId] = []
        
        group.enter()
        respository.getGenreMovie { genres in
            fetchedGenres = genres
            group.leave()
        } onFailure: { error in
            fetchError = error
            group.leave()
        }
        
        group.enter()
        respository.getMovie(onSuccess: { movies in
        fetchedMovies = movies
                group.leave()
        }, onFailure: { error in
            fetchError = error
            group.leave()
        })
        
        group.notify(queue: .main) {
            if let error = fetchError {
                self.errorMessage = error.localizedDescription
            } else {
                self.genreMap = Dictionary(uniqueKeysWithValues: fetchedGenres.map { ($0.id, $0.name) })
                self.movieList = fetchedMovies
            }
        }
    }
}



