//
//  CardsView.swift
//  OnlyWin
//
//  Created by Іван Штурхаль on 05.03.2025.
//

import SwiftUI

struct CardsView: View {
    
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: CardsViewModel

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
                    ForEach(viewModel.people, id: \.self) { item in
                        CardItem(name: item.name,
                                 description: item.description,
                                 photoPic: item.photoPic)
                    }
                }
            }
        }
    }
}
