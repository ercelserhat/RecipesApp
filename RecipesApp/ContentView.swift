//
//  ContentView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 21.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomePageView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Discover")
                .tabItem {
                    Image(systemName: "location.fill")
                    Text("Discover")
                }
                .tag(1)
            Text("Add")
                .tabItem {
                    Image(systemName: "plus.diamond")
                    Text("Add")
                }
                .tag(2)
            Text("Shopping")
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Shop")
                }
                .tag(3)
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .tint(.crimson)
    }
}

#Preview {
    ContentView()
}
