//
//  Structs.swift
//  Recipes-App
//
//  Created by Patron on 2/4/24.
//

import Foundation

class Meal: Encodable, Decodable, Identifiable, ObservableObject {
    
    enum CodingKeys: CodingKey {
        case strMeal
        case strMealThumb
        case idMeal
        
    }
    
    @Published var strMeal: String
    @Published var strMealThumb: String
    @Published var idMeal: String

    
    init() {
        strMeal = ""
        strMealThumb = ""
        idMeal = ""
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        strMeal = try container.decode(String.self, forKey: .strMeal)
        strMealThumb = try container.decode(String.self, forKey: .strMealThumb)
        idMeal = try container.decode(String.self, forKey: .idMeal)

    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(strMeal, forKey: .strMeal)
        try container.encode(strMealThumb, forKey: .strMealThumb)
        try container.encode(idMeal, forKey: .idMeal)


    }

}

class MealsResponse:  Encodable, Decodable, Identifiable, ObservableObject {
    
    enum CodingKeys: CodingKey {
        case meals
        
        
    }
    
    @Published var meals: [Meal]
    
    
    init() {
        meals = [Meal]()
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meals = try container.decode([Meal].self, forKey: .meals)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(meals, forKey: .meals)
        
    }

}
