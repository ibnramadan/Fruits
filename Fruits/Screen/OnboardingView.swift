//
//  OnboardingView.swift
//  Fruits
//
//  Created by mohamed ramadan on 11/12/2023.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
