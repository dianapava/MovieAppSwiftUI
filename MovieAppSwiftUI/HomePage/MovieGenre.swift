//
//  MovieGenre.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//

//
import SwiftUI

struct MovieGenre: View {
    
    var body: some View {
        ZStack {
            VStack {
                Text("1")
                    .font(.headline)
                    .bold()
            }
            .frame(width: 80, height: 20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
            )
            .shadow(radius: 10)
        }.padding(5)
    }
}

#Preview {
    MovieGenre()
}
