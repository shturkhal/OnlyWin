//
//  CardModel.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 07.03.2025.
//

import SwiftUI

struct PersonCardModel: Hashable {
    let name: String
    let description: String
    let photoPic: String
}

struct CardItem: View {
    
    let name: String
    let description: String
    let photoPic: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(name)
                    .font(.custom("Ruda-ExtraBold", size: 24))
                    .multilineTextAlignment(.leading)
                Text(description)
                    .font(.custom("Ruda-Regular", size: 12))
                    .multilineTextAlignment(.leading)

            }
            .padding(.horizontal)

            Spacer()
            
            Image(photoPic)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .cornerRadius(20)
                .clipped()
                .shadow(color: .orange, radius: 5)
                .padding(.horizontal)

        }
        .padding(20)
    }
}
