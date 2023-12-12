//
//  StartButtonView.swift
//  Fruits
//
//  Created by mohamed ramadan on 07/12/2023.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        
        @AppStorage("isOnboarding") var isOnboarding: Bool?
        
        Button {
           // action
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
              Text("Start")
              
              Image(systemName: "arrow.right.circle")
                .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
              Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
