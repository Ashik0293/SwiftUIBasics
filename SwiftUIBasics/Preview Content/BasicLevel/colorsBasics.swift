//
//  colorsBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/11/24.
//

import SwiftUI

struct colorsBasics: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.red
                //Color(#colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1))
                //Color(.secondarySystemBackground)
                Color("customcolor").opacity(0.50)
                //for dark and light using asset color
            )
            .frame(width: 300, height:  200)
            .shadow(radius: 20)
           //.shadow(radius: 20, x: -20, y: -20)
            .shadow(color: Color("customcolor").opacity(0.5), radius: 10, x: -20, y: -20)
        
    }
}

#Preview {
    colorsBasics()
}
