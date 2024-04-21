//
//  HeaderView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 22.04.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Text("Hi,\nEmilia!")
                .font(.title)
                .fontDesign(.serif)
                .fontWeight(.semibold)
                .foregroundStyle(.black.opacity(0.9))
            Spacer()
            Image("aiprofileimage")
                .resizable()
                .scaledToFill()
                .frame(width: 75, height: 75, alignment: .center)
                .clipped()
                .allowsHitTesting(false)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(radius: 10)
        }
    }
}

#Preview {
    HeaderView()
}
