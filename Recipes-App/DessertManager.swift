//
//  DessertManager.swift
//  Recipes-App
//
//  Created by Patron on 2/3/24.
//

import Foundation

class DessertManager : ObservableObject {
    @Published var meals: [Meal] = [] // Assuming Meal is your model, conforming to Identifiable
    @Published var instructions: [Instructions] = [] // Assuming Instructions is your model, conforming to Identifiable

    // Function to fetch data
    func fetchData(from urlString: String, urlDetail: String) async throws {
        switch urlDetail {
            // combine url and id
        case urlDetail where urlDetail != "0":
            guard let url = URL(string: urlString + urlDetail) else { throw URLError(.badURL) }
            let (data, _) = try await URLSession.shared.data(from: url)
            // Decode your data and update `meals`
            // Assuming you have a decoder and your data structure is correct
            let decodedResponse = try JSONDecoder().decode(InstructionsResponse.self, from: data) // MealsResponse should match your JSON structure
            DispatchQueue.main.async {
                // Sort the meals array alphabetically by the strMeal property before assigning it to the published property
                self.instructions = decodedResponse.meals
            }
        default:
            guard let url = URL(string: urlString) else { throw URLError(.badURL) }
            let (data, _) = try await URLSession.shared.data(from: url)
            // Decode your data and update `meals`
            // Assuming you have a decoder and your data structure is correct
            let decodedResponse = try JSONDecoder().decode(MealsResponse.self, from: data) // MealsResponse should match your JSON structure
            DispatchQueue.main.async {
                // Sort the meals array alphabetically by the strMeal property before assigning it to the published property
                self.meals = decodedResponse.meals.sorted { $0.strMeal < $1.strMeal }
            }
        }
        
    }



}
