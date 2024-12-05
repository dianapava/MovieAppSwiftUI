//
//  MovieModel.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

import Foundation

struct MovieModel: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let original_title: String
    let overview: String
    let poster_path: String
    let backdrop_path: String
    let genre_ids: [Int]
}
