//
//  MovieAppSwiftUIApp.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

import SwiftUI

@main
struct MovieAppSwiftUIApp: App {

    @ObservedObject var viewModel = MovieViewModel()

    var body: some Scene {
        WindowGroup {
            HomePageView()
        }
    }
}
