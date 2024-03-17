import Foundation

class DessertManager : ObservableObject {
    @Published var meals: [Meal] = [] 
    @Published var instructions: [Instructions] = [] 

    func fetchData(from urlString: String, urlDetail: String) async throws {
        switch urlDetail {
            // combine url and id
        case urlDetail where urlDetail != "0":
            guard let url = URL(string: urlString + urlDetail) else { throw URLError(.badURL) }
            let (data, _) = try await URLSession.shared.data(from: url)
            // Decode data and update `meals`
            let decodedResponse = try JSONDecoder().decode(InstructionsResponse.self, from: data) 
            DispatchQueue.main.async {
                // Assign instructions to the meals
                self.instructions = decodedResponse.meals
            }
        default:
            guard let url = URL(string: urlString) else { throw URLError(.badURL) }
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedResponse = try JSONDecoder().decode(MealsResponse.self, from: data) 
            DispatchQueue.main.async {
                // Sort the meals array alphabetically by the strMeal property before assigning it to the published property
                self.meals = decodedResponse.meals.sorted { $0.strMeal < $1.strMeal }
            }
        }
        
    }



}
