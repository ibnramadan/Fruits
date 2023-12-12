//
//  FruitCardView.swift
//  Fruits
//
//  Created by mohamed ramadan on 07/12/2023.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT: TITLE
                Text(fruit.title)
                  .foregroundColor(Color.white)
                  .font(.largeTitle)
                  .fontWeight(.heavy)
                  .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text(fruit.headline)
                  .foregroundColor(Color.white)
                  .multilineTextAlignment(.center)
                  .padding(.horizontal, 16)
                  .frame(maxWidth: 480)
                
                // FRUIT: StartButtonView
                StartButtonView()
                
            }  // VStack
        } // ZStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
            
    }
    
    // MARK: - Functions
}

#Preview(traits: .fixedLayout(width: 320, height: 640)) {
    FruitCardView(fruit: fruitsData[0])
}
