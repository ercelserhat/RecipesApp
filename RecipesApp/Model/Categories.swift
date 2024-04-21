//
//  Categories.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 22.04.2024.
//

import Foundation

enum Categories: Int, CaseIterable{
    case meat = 0
    case chicken
    case fish
    case vegetable
    case dessert
    case drink
    case salad
    
    var title: String{
        switch self{
        case .meat:
            return "Meat"
        case .chicken:
            return "Chicken"
        case .fish:
            return "Fish"
        case .vegetable:
            return "Vegetable"
        case .dessert:
            return "Dessert"
        case .drink:
            return "Drink"
        case .salad:
            return "Salad"
        }
    }
    
    var imageName: String{
        switch self{
        case .meat:
            return "meat"
        case .chicken:
            return "chicken"
        case .fish:
            return "fish"
        case .vegetable:
            return "vegetable"
        case .dessert:
            return "dessert"
        case .drink:
            return "drink"
        case .salad:
            return "salad"
        }
    }
}
