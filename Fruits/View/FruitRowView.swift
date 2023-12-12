//
//  FruitRowView.swift
//  Fruits
//
//  Created by mohamed ramadan on 11/12/2023.
//

import SwiftUI

struct FruitRowView: View {
    var fruit: Fruit
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8.0))
                VStack(alignment: .leading, spacing: 5) {
                  Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                  Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
