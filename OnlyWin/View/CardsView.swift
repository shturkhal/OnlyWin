//
//  CardsView.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 05.03.2025.
//

import SwiftUI


struct CardsView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let people = [
        PersonCardModel(name: "Sabrina",
                        description: "A passionate traveler who has visited over 30 countries and still counting",
                        photoPic: "photo1"),
        PersonCardModel(name: "Bob",
                        description: "A tech enthusiast who can talk about AI and coding for hours",
                        photoPic: "photo2"),
        PersonCardModel(name: "Charlie",
                        description: "A fitness coach who believes every day is a new opportunity to improve",
                        photoPic: "photo4"),
        PersonCardModel(name: "Brandon",
                        description: "A book lover who dreams of writing his own novel someday",
                        photoPic: "photo5"),
        PersonCardModel(name: "Barbara",
                        description: "A coffee addict who knows all the best cafés in town",
                        photoPic: "photo6"),
        PersonCardModel(name: "Preston",
                        description: "A nature photographer who captures the beauty of the world through his lens",
                        photoPic: "photo3")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 24)
                
               
            }
            
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(people, id: \.self) { item in
                        CardItem(name: item.name,
                                 description: item.description,
                                 photoPic: item.photoPic)
                    }
                }
            }
        }
    }
}

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
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .orange, radius: 5)
                .padding(.horizontal)

        }
        .padding(20)
    }
}

#Preview {
    CardsView()
}
