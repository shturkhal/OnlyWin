//
//  SplashScreenView.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 06.03.2025.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var progress: Double = 0.2
    
    var body: some View {
        VStack(spacing: 80) {
            Image("winLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            ProgressView(value: progress, total: 1.0)
                .progressViewStyle(CircularProgressViewStyle(tint: .orange))
                .scaleEffect(2)
        }
    }
}

#Preview {
    SplashScreenView()
}
