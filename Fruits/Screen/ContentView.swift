//
//  ContentView.swift
//  Fruits
//
//  Created by mohamed ramadan on 06/12/2023.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {

                    } label: {
                        Image(systemName: "slider.horizontal.3")

                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
