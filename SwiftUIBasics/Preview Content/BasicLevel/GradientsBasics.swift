//
//  GradientsBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/11/24.
//

import SwiftUI
//for colorLiteral edit -> format -> show colors
struct GradientsBasics: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //.linearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .bottomTrailing)
                //using colorLiteral
                //.linearGradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)) ,Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))], startPoint: .leading, endPoint: .bottomTrailing)
                //.radialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300)
                //using COlorLiteral
                //.radialGradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)) ,Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))], center: .center, startRadius: 5, endRadius: 300)
                AngularGradient(
                    colors: [.red,.blue],
                    center: .bottomLeading,
                    angle: .degrees(60)
                )
                
            )
        
            .frame(width:300 , height: 200)
    }
}

#Preview {
    GradientsBasics()
}
