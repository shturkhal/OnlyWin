//
//  MainScreenView.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 05.03.2025.
//

import SwiftUI

struct MainScreenView: View {
    
    @State private var showWebView = false
    @State private var showImagesView = false
    
    var body: some View {
        VStack(spacing: 80) {
            
            Text("Make your choice")
                .font(.custom("Ruda-ExtraBold", size: 30))
                .foregroundStyle(.orange)

            HStack(spacing: 30) {
                Button(action: { showWebView = true }) {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 120, height: 80)
                        .overlay(Image(systemName: "globe")
                        .foregroundColor(.white)
                        .font(.system(size: 30)))
                        .cornerRadius(20)
                        .shadow(color: .black, radius: 5)
                }
                .sheet(isPresented: $showWebView) {
                    WebScreenView(url: "https://www.apple.com")
                }
                Button(action: { showImagesView = true }) {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 120, height: 80)
                        .overlay(Image(systemName: "photo.on.rectangle")
                            .foregroundColor(.white)
                            .font(.system(size: 30)))
                        .cornerRadius(20)
                        .shadow(color: .black, radius: 5)
                }
                .fullScreenCover(isPresented: $showImagesView) {
                    CardsView(viewModel: CardsViewModel()) 
                }
            }
        }
    }}

#Preview {
    MainScreenView()
}
