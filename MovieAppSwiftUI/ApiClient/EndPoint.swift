//
//  EndPoint.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
}

protocol Endpoint{
    var url: String { get set }
    var httpMethod: HTTPMethod { get set }
    var headers: [String: String] { get set }
}

struct MovieEndpoint: Endpoint {
    var url: String = "https://api.themoviedb.org/3/movie/popular"
    var httpMethod: HTTPMethod = .get
    var headers: [String : String] =  [
        "accept": "application/json",
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5OWNhMjNiNDA0YTVkYzRmZDRhN2NiZjAxNGEzYzYxOCIsIm5iZiI6MTY4Mzg1NDI2OC42NDYwMDAxLCJzdWIiOiI2NDVkOTNiY2Q2YzMwMDAxMDNkNzZhMDMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.L9PqQtKH1oblZSDKKZAS81BuVxTa7j4jMtRg9gk7Aq4"
      ]
}

