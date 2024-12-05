//
//  ToolBarHomePage.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 4/12/24.
//
import SwiftUI

struct ToolBarHomePage: View {
    
    var body: some View {
        HStack{
            Text("Movies")
                .font(.system(size: 25))
                .bold()
                .shadow(radius: 10)
                //.safeAreaPadding()
                .padding()
            Spacer()
            Button("", systemImage: "magnifyingglass", action: {
                
            }).foregroundColor(.black)
                .font(.system(size: 20))
                .bold()
                .shadow(radius: 10)
            Button("", systemImage: "bell.and.waves.left.and.right", action: {
                
            }).foregroundColor(.black)
                .font(.system(size: 20))
                .bold()
                .shadow(radius: 10)
                .padding()
        }
    }
}



#Preview {
    ToolBarHomePage()
}
//star.fill
