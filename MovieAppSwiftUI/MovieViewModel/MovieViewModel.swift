//
//  MovieViewModel.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 5/12/24.
//

import Foundation
import SDWebImageSwiftUI

class MovieViewModel: ObservableObject {
    //MARK: public properties
    @Published var movieList: [MovieModel] = []

    
    //MARK: private properties
    private lazy var respository : MovieRepository = {
        let apiClient = ApiClient()
        return MovieRepository(apiClient: apiClient)
    }()
     
    func viewDidload() {
        getMovieList()
    }
    
    private func getMovieList() {
        respository.getMovie(onSuccess: { [weak self] movies in
            DispatchQueue.main.async {
                self?.movieList = movies
            }
        }, onFailure: { error in
            
        })
    }
    
    func set(urlImage: String) {
           let url = "https://image.tmdb.org/t/p/w400" + urlImage
           //imageMovie.sd_setImage(with: URL(string: url))
       }
}



