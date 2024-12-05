//
//  EndPoint.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

import Foundation

protocol Endpoint{
    var url: String { get set }
}

struct MovieEndpoint: Endpoint {
    var url: String = "https://api.themoviedb.org/3/movie/popular"
}
