//
//  Structs.swift
//  Recipes-App
//
//  Created by Patron on 2/4/24.
//

import Foundation

class Instructions: Encodable, Decodable, Identifiable, ObservableObject {
    
    enum CodingKeys: CodingKey {
        case strMeal
        case idMeal
        case strInstructions
        case strMealThumb
        case strYoutube
        
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case strIngredient16
        case strIngredient17
        case strIngredient18
        case strIngredient19
        case strIngredient20
        
        case strMeasure1
        case strMeasure2
        case strMeasure3
        case strMeasure4
        case strMeasure5
        case strMeasure6
        case strMeasure7
        case strMeasure8
        case strMeasure9
        case strMeasure10
        case strMeasure11
        case strMeasure12
        case strMeasure13
        case strMeasure14
        case strMeasure15
        case strMeasure16
        case strMeasure17
        case strMeasure18
        case strMeasure19
        case strMeasure20
        
        case strSource
    }
    
    @Published var strMeal: String
    @Published var idMeal: String
    @Published var strInstructions: String
    @Published var strMealThumb: String
    @Published var strYoutube: String?
    
    @Published var strIngredient1: String?
    @Published var strIngredient2: String?
    @Published var strIngredient3: String?
    @Published var strIngredient4: String?
    @Published var strIngredient5: String?
    @Published var strIngredient6: String?
    @Published var strIngredient7: String?
    @Published var strIngredient8: String?
    @Published var strIngredient9: String?
    @Published var strIngredient10: String?
    @Published var strIngredient11: String?
    @Published var strIngredient12: String?
    @Published var strIngredient13: String?
    @Published var strIngredient14: String?
    @Published var strIngredient15: String?
    @Published var strIngredient16: String?
    @Published var strIngredient17: String?
    @Published var strIngredient18: String?
    @Published var strIngredient19: String?
    @Published var strIngredient20: String?
    
    @Published var strMeasure1: String?
    @Published var strMeasure2: String?
    @Published var strMeasure3: String?
    @Published var strMeasure4: String?
    @Published var strMeasure5: String?
    @Published var strMeasure6: String?
    @Published var strMeasure7: String?
    @Published var strMeasure8: String?
    @Published var strMeasure9: String?
    @Published var strMeasure10: String?
    @Published var strMeasure11: String?
    @Published var strMeasure12: String?
    @Published var strMeasure13: String?
    @Published var strMeasure14: String?
    @Published var strMeasure15: String?
    @Published var strMeasure16: String?
    @Published var strMeasure17: String?
    @Published var strMeasure18: String?
    @Published var strMeasure19: String?
    @Published var strMeasure20: String?
    
    @Published var strSource: String?
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        strMeal = try container.decode(String.self, forKey: .strMeal)
        idMeal = try container.decode(String.self, forKey: .idMeal)
        strInstructions = try container.decode(String.self, forKey: .strInstructions)
        strMealThumb = try container.decode(String.self, forKey: .strMealThumb)
        strYoutube = try container.decode(String.self, forKey: .strYoutube)
        strSource = try container.decodeIfPresent(String.self, forKey: .strSource)
        
        strIngredient1 = try container.decodeIfPresent(String.self, forKey: .strIngredient1)
        strIngredient2 = try container.decodeIfPresent(String.self, forKey: .strIngredient2)
        strIngredient3 = try container.decodeIfPresent(String.self, forKey: .strIngredient3)
        strIngredient4 = try container.decodeIfPresent(String.self, forKey: .strIngredient4)
        strIngredient5 = try container.decodeIfPresent(String.self, forKey: .strIngredient5)
        strIngredient6 = try container.decodeIfPresent(String.self, forKey: .strIngredient6)
        strIngredient7 = try container.decodeIfPresent(String.self, forKey: .strIngredient7)
        strIngredient8 = try container.decodeIfPresent(String.self, forKey: .strIngredient8)
        strIngredient9 = try container.decodeIfPresent(String.self, forKey: .strIngredient9)
        strIngredient10 = try container.decodeIfPresent(String.self, forKey: .strIngredient10)
        strIngredient11 = try container.decodeIfPresent(String.self, forKey: .strIngredient11)
        strIngredient12 = try container.decodeIfPresent(String.self, forKey: .strIngredient12)
        strIngredient13 = try container.decodeIfPresent(String.self, forKey: .strIngredient13)
        strIngredient14 = try container.decodeIfPresent(String.self, forKey: .strIngredient14)
        strIngredient15 = try container.decodeIfPresent(String.self, forKey: .strIngredient15)
        strIngredient16 = try container.decodeIfPresent(String.self, forKey: .strIngredient16)
        strIngredient17 = try container.decodeIfPresent(String.self, forKey: .strIngredient17)
        strIngredient18 = try container.decodeIfPresent(String.self, forKey: .strIngredient18)
        strIngredient19 = try container.decodeIfPresent(String.self, forKey: .strIngredient19)
        strIngredient20 = try container.decodeIfPresent(String.self, forKey: .strIngredient20)

        strMeasure1 = try container.decodeIfPresent(String.self, forKey: .strMeasure1)
        strMeasure2 = try container.decodeIfPresent(String.self, forKey: .strMeasure2)
        strMeasure3 = try container.decodeIfPresent(String.self, forKey: .strMeasure3)
        strMeasure4 = try container.decodeIfPresent(String.self, forKey: .strMeasure4)
        strMeasure5 = try container.decodeIfPresent(String.self, forKey: .strMeasure5)
        strMeasure6 = try container.decodeIfPresent(String.self, forKey: .strMeasure6)
        strMeasure7 = try container.decodeIfPresent(String.self, forKey: .strMeasure7)
        strMeasure8 = try container.decodeIfPresent(String.self, forKey: .strMeasure8)
        strMeasure9 = try container.decodeIfPresent(String.self, forKey: .strMeasure9)
        strMeasure10 = try container.decodeIfPresent(String.self, forKey: .strMeasure10)
        strMeasure11 = try container.decodeIfPresent(String.self, forKey: .strMeasure11)
        strMeasure12 = try container.decodeIfPresent(String.self, forKey: .strMeasure12)
        strMeasure13 = try container.decodeIfPresent(String.self, forKey: .strMeasure13)
        strMeasure14 = try container.decodeIfPresent(String.self, forKey: .strMeasure14)
        strMeasure15 = try container.decodeIfPresent(String.self, forKey: .strMeasure15)
        strMeasure16 = try container.decodeIfPresent(String.self, forKey: .strMeasure16)
        strMeasure17 = try container.decodeIfPresent(String.self, forKey: .strMeasure17)
        strMeasure18 = try container.decodeIfPresent(String.self, forKey: .strMeasure18)
        strMeasure19 = try container.decodeIfPresent(String.self, forKey: .strMeasure19)
        strMeasure20 = try container.decodeIfPresent(String.self, forKey: .strMeasure20)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(strMeal, forKey: .strMeal)
        try container.encode(idMeal, forKey: .idMeal)
        try container.encode(strInstructions, forKey: .strInstructions)
        try container.encode(strMealThumb, forKey: .strMealThumb)
        try container.encode(strYoutube, forKey: .strYoutube)
        try container.encodeIfPresent(strSource, forKey: .strSource)
        
        try container.encodeIfPresent(strIngredient1, forKey: .strIngredient1)
        try container.encodeIfPresent(strIngredient2, forKey: .strIngredient2)
        try container.encodeIfPresent(strIngredient3, forKey: .strIngredient3)
        try container.encodeIfPresent(strIngredient4, forKey: .strIngredient4)
        try container.encodeIfPresent(strIngredient5, forKey: .strIngredient5)
        try container.encodeIfPresent(strIngredient6, forKey: .strIngredient6)
        try container.encodeIfPresent(strIngredient7, forKey: .strIngredient7)
        try container.encodeIfPresent(strIngredient8, forKey: .strIngredient8)
        try container.encodeIfPresent(strIngredient9, forKey: .strIngredient9)
        try container.encodeIfPresent(strIngredient10, forKey: .strIngredient10)
        try container.encodeIfPresent(strIngredient11, forKey: .strIngredient11)
        try container.encodeIfPresent(strIngredient12, forKey: .strIngredient12)
        try container.encodeIfPresent(strIngredient13, forKey: .strIngredient13)
        try container.encodeIfPresent(strIngredient14, forKey: .strIngredient14)
        try container.encodeIfPresent(strIngredient15, forKey: .strIngredient15)
        try container.encodeIfPresent(strIngredient16, forKey: .strIngredient16)
        try container.encodeIfPresent(strIngredient17, forKey: .strIngredient17)
        try container.encodeIfPresent(strIngredient18, forKey: .strIngredient18)
        try container.encodeIfPresent(strIngredient19, forKey: .strIngredient19)
        try container.encodeIfPresent(strIngredient20, forKey: .strIngredient20)
        
        try container.encodeIfPresent(strMeasure1, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure2, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure3, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure4, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure5, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure6, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure7, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure8, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure9, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure10, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure11, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure12, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure13, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure14, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure15, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure16, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure17, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure18, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure19, forKey: .strMeasure1)
        try container.encodeIfPresent(strMeasure20, forKey: .strMeasure1)
    }

}

class InstructionsResponse:  Encodable, Decodable, Identifiable, ObservableObject {
    
    enum CodingKeys: CodingKey {
        case meals
    
    }
    
    @Published var meals: [Instructions]
    
    
    init() {
        meals = [Instructions]()
        
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meals = try container.decode([Instructions].self, forKey: .meals)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(meals, forKey: .meals)
        
    }

}
