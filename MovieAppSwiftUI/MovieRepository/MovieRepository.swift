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
    
    func getMovie(onSuccess:  @escaping ([MovieModel]) -> (), onFailure:  @escaping (Error) -> ()) {
        let endpoint = MovieEndpoint()
        apiClient.request(endpoint: endpoint) { model in
            onSuccess(model)
            print(model)
        } onFailure: { error in
            onFailure(error)
        }
    }
}
