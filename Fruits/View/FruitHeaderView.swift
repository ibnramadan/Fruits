//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by mohamed ramadan on 12/12/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
                .shadow(color: .black.opacity(0.15),radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
        }.frame(height: 440)
         .onAppear() {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isAnimatingImage = true
                }
            }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
