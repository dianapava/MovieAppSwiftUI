//
//  ContentView.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

import SwiftUI

struct HomePageView: View {
    
    @ObservedObject var viewModel = MovieViewModel()
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    ToolBarHomePage()
                    HStack{
                        ForEach(0...2, id: \.self) { value in
                            MovieGenre()
                            
                        }
                    }.padding(.trailing, 80)
                    BackgroundMovie()
                    Spacer()
                }
            }
        }
    }
}



#Preview {
    HomePageView()
}
