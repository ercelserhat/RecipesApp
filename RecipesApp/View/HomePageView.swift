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
                        // Header View
                        HeaderView()
                            .padding(.horizontal)
                        
                        // Search TextField View
                        SearchTextFieldView()
                            .padding(.horizontal)
                        
                        // Categories
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(Categories.allCases, id: \.self){ category in
                                    CategoryItemView(title: category.title, imageName: category.imageName)
                                        .padding(.horizontal, 5)
                                }
                            }
                            .padding()
                        }
                        .scrollIndicators(.hidden)
                        
                        RecipeCardView()
                        RecipeCardView()
                        RecipeCardView()
                    }
                    .padding(.top)
                }
            }
            
        }
    }
}

#Preview {
    HomePageView()
}
