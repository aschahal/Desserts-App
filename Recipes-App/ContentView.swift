//
//  ContentView.swift
//  Recipes-App
//
//  Created by Patron on 2/3/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var viewModel: DessertManager // Use EnvironmentObject to inject the ViewModel

    var body: some View {
        NavigationView {
            List(viewModel.meals) { meal in // Ensure Meal conforms to Identifiable
                NavigationLink(destination: DetailView(mealID: meal.idMeal)) {
                    HStack {
                        AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView() // Show a progress indicator while the image is loading
                                            }
                                            .frame(width: 50, height: 50)
                                            .scaledToFit()

                                            Text(meal.strMeal) }
                }
            }
            .navigationBarTitle("Desserts")
        }
        .onAppear {
            Task {
                await fetchData()
            }
        }
    }

    func fetchData() async {
        do {
            try await viewModel.fetchData(from: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert", urlDetail: "0")
        } catch {
            print("An error occurred: \(error)")
            // Handle the error appropriately
        }
    }
}
#Preview {
    ContentView()
}
