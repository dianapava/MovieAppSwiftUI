//
//  ToolbarHomePageView.swift
//  MovieAppSwiftUI
//
//  Created by Diana Pava Avila on 10/01/25.
//
import SwiftUI

struct ToolbarHomePageView: View {
    var body: some View {
        HStack{
            Spacer()
            Button("", systemImage: "magnifyingglass", action: {
                
            }).foregroundColor(.white)
                .font(.system(size: 20))
                .bold()
                .shadow(radius: 10)
            Button("", systemImage: "bell.and.waves.left.and.right", action: {
                
            }).foregroundColor(.white)
                .font(.system(size: 20))
                .bold()
                .shadow(radius: 10)
        }.safeAreaPadding(.horizontal, 60)
    }
}
