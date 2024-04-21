//
//  SearchTextFieldView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 22.04.2024.
//

import SwiftUI

struct SearchTextFieldView: View {
    @State private var  searchText: String = ""
    @FocusState private var searchTextFocused: Bool
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField("Search recipe...", text: $searchText)
                .focused($searchTextFocused)
                .autocorrectionDisabled()
            if searchTextFocused{
                Image(systemName: "xmark")
                    .onTapGesture {
                        searchText = ""
                    }
                    .padding(.trailing, 7)
            }
            Image(systemName: "slider.horizontal.3")
        }
        .foregroundStyle(.black.opacity(0.8))
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray))
    }
}

#Preview {
    SearchTextFieldView()
}
