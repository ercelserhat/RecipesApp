//
//  HomePageView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 22.04.2024.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.clear, .gray.opacity(0.1)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            NavigationStack{
                ScrollView{
                    VStack{
                        HeaderView()
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomePageView()
}
