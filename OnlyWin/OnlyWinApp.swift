//
//  OnlyWinApp.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 05.03.2025.
//

import SwiftUI

@main
struct OnlyWinApp: App {
    
    @State private var isAppReady = false
    
    var body: some Scene {
        WindowGroup {
            if isAppReady {
                ContentView()
            } else {
                SplashScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                isAppReady = true
                            }
                        }
                    }
            }
        }
    }
}
