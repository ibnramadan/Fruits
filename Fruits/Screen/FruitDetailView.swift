//
//  FruitDetailView.swift
//  Fruits
//
//  Created by mohamed ramadan on 12/12/2023.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                          .font(.headline)
                          .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                          .fontWeight(.bold)
                          .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                          .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                          .padding(.top, 10)
                          .padding(.bottom, 40)
                    }//: VStack
                    .padding(.horizontal, 16)
                    
                } //: VStack
               
            }
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
