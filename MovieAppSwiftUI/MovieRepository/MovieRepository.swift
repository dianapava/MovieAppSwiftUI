//
//  MovieRepository.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

import Foundation

class MovieRepository {
    let apiClient: ApiClientProtocol
    
    init(apiClient: ApiClientProtocol) {
        self.apiClient = apiClient
    }
    
    func getMovie(onSuccess:  @escaping ([Movie]) -> (), onFailure:  @escaping (Error) -> ()) {
        let endpoint = MovieEndpoint()
        apiClient.request(endpoint: endpoint) { (model: MovieModel) in
            onSuccess(model.results)
        } onFailure: { error in
            onFailure(error)
        }
    }
    
    func getGenreMovie(onSuccess:  @escaping ([GenreId]) -> (), onFailure:  @escaping (Error) -> ()) {
        let endpoint = GenreEndpoint()
        apiClient.request(endpoint: endpoint) { (genre: GenresMovie) in
            onSuccess(genre.genres)
        } onFailure: { error in
            onFailure(error)
        }
    }
}
