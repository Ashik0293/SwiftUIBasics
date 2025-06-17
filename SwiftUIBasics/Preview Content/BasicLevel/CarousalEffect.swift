//
//  CarousalEffect.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 13/06/25.
//

import SwiftUI

struct CarousalEffect: View {
    private var colorsArr: [Color] = [.red, .green, .yellow, .blue, .orange, .accentColor, .cyan, .brown, .indigo]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 25) {
                ForEach(0..<colorsArr.count, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(colorsArr[index])
                        .shadow(radius: 5, x: 5, y: 5)
                        .frame(width: UIScreen.main.bounds.width - 100, height: 400)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.5) // Apply opacity animation
                                .scaleEffect(y: phase.isIdentity ? 1 : 0.7) // Apply scale animation
                        }
                }
            }
            .scrollTargetLayout() // Align content to the view
        }
        .contentMargins(50, for: .scrollContent) // Add padding
        .scrollTargetBehavior(.viewAligned) // Align content behavior
    }
}


#Preview {
    CarousalEffect()
}
