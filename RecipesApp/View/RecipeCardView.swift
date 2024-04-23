//
//  RecipeCardView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 22.04.2024.
//

import SwiftUI

struct RecipeCardView: View {
    var body: some View {
        ZStack(alignment: .topTrailing){
            VStack{
                Image("food1")
                    .resizable()
                    .scaledToFill()
                    
                    .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width * 0.5)
                    .clipped()
                    .shadow(radius: 10)
                
                HStack{
                    Text("Yemek Adı")
                    
                    Spacer()
                    
                    HStack(alignment: .center){
                        Image(systemName: "bookmark")
                        Image(systemName: "heart")
                    }
                }
                .font(.headline)
                .foregroundStyle(.black)
                .padding(.horizontal)
                .padding(.bottom, 7)
            }
            .background(.goldyellow)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .shadow(radius: 10)
            
            VStack(alignment: .trailing, spacing: 5){
                HStack(spacing: 1){
                    HStack{
                        Image("aiprofileimage")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                        Text("chefemilia")
                            .foregroundStyle(.white)
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                }
                .padding(5)
                .background(
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.black.opacity(0.7))
                )
                .shadow(radius: 10)
                
                HStack(spacing: 1){
                    Image(systemName: "timer")
                        .foregroundStyle(.white)
                        .font(.caption)
                    Text("30min")
                        .font(.caption2)
                        .foregroundStyle(.white)
                }
                .padding(5)
                .background(
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.black.opacity(0.7))
                )
                .shadow(radius: 10)
            }
            .offset(y: 10)
            .padding(.horizontal, 10)
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

#Preview {
    RecipeCardView()
}
