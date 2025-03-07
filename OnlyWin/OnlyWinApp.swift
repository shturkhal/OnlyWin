//
//  OnlyWinApp.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 05.03.2025.
//

import SwiftUI

@main
struct OnlyWinApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
    
    
    @State private var isAppReady = false
//    @StateObject private var viewModel = ConViewModel()
    
    var body: some Scene {
        WindowGroup {
            if isAppReady {
                ContentView()
//                    .environmentObject(viewModel)
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
