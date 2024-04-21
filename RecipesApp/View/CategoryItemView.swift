//
//  CategoryItemView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 22.04.2024.
//

import SwiftUI

struct CategoryItemView: View {
    var title: String
    var imageName: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .frame(width: UIScreen.main.bounds.width * 0.1, height: UIScreen.main.bounds.width * 0.1)
                .foregroundStyle(.black)
                .padding(10)
                .background(.goldyellow)
                .clipShape(Circle())
                .shadow(radius: 3)
            
            Text(title)
                .font(.headline)
        }
    }
}

#Preview {
    CategoryItemView(title: "Meat", imageName: "meat")
}
