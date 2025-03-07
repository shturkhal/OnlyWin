//
//  CardsViewModel.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 07.03.2025.
//

import SwiftUI

class CardsViewModel: ObservableObject {
    
    @Published var people: [PersonCardModel] = [
        PersonCardModel(name: "Sabrina",
                        description: "A passionate traveler who has visited over 30 countries and still counting",
                        photoPic: "photo11"),
        PersonCardModel(name: "Bob",
                        description: "A tech enthusiast who can talk about AI and coding for hours",
                        photoPic: "photo22"),
        PersonCardModel(name: "Charlie",
                        description: "A fitness coach who believes every day is a new opportunity to improve",
                        photoPic: "photo44"),
        PersonCardModel(name: "Brandon",
                        description: "A book lover who dreams of writing his own novel someday",
                        photoPic: "photo55"),
        PersonCardModel(name: "Barbara",
                        description: "A coffee addict who knows all the best cafés in town",
                        photoPic: "photo66"),
        PersonCardModel(name: "Preston",
                        description: "A nature photographer who captures the beauty of the world through his lens",
                        photoPic: "photo33")
    ]
}
