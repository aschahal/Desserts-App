import SwiftUI

struct DetailView: View {
    @EnvironmentObject private var viewModel: DessertManager 

    let mealID: String

    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10) {
                if viewModel.instructions.isEmpty {
                    ProgressView()
                }
                else {
                    Text(viewModel.instructions[0].strMeal)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    if let youtubeURL = viewModel.instructions[0].strYoutube,
                        let url = URL(string: youtubeURL) {
                        Link("Watch YouTube video", destination: url)
                    }
                    else {
                        Text("")
                    }

                    if let youtubeURL = viewModel.instructions[0].strSource,
                        let url = URL(string: youtubeURL) {
                        Link("Recipe source", destination: url)
                    }
                    else {
                        Text("")
                    }
                    
                    Text(viewModel.instructions[0].strInstructions)
                        .font(.body)
                        .padding(.top, 5)
                    
                    // All instructions and meals together
                    Group {
                        VStack {
                            HStack {
                                Text("Ingredients")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                                Text("Measurements")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                                .padding(.vertical)
                            
                            HStack {
                                Text(viewModel.instructions[0].strIngredient1 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure1 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient2 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure2 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient3 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure3 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient4 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure4 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient5 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure5 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient6 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure6 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient7 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure7 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient8 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure8 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient9 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure9 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient10 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure10 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient11 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure11 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient12 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure12 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient13 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure13 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient14 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure14 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient15 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure15 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient16 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure16 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient17 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure17 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient18 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure18 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient19 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure19 ?? "")
                            }
                            HStack {
                                Text(viewModel.instructions[0].strIngredient20 ?? "")
                                Spacer()
                                Text(viewModel.instructions[0].strMeasure20 ?? "")
                            }
                        }
                    }

                }    
            }                   
    }
        
            .onAppear {
                Task {
                    await fetchDetailData()
                }
            }
    }
    
    func fetchDetailData() async {
        do {
            try await viewModel.fetchData(from: "https://themealdb.com/api/json/v1/1/lookup.php?i=", urlDetail: mealID)
        } catch {
            print("An error occurred: \(error)")
        }
    }
}


