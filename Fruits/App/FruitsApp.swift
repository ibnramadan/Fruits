//
//  FruitsApp.swift
//  Fruits
//
//  Created by mohamed ramadan on 06/12/2023.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
               OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
