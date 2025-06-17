//
//  ColorPicker.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 30/12/24.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    @State var BackGroundColor: Color = .green
    var body: some View {
        ZStack{
            BackGroundColor
            ColorPicker("Select a Color", selection: $BackGroundColor, supportsOpacity: true)
                .padding()
                .background(.black)
                .cornerRadius(10)
                .foregroundStyle(.white)
                .font(.headline)
                .padding(50)
                
            
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ColorPickerBootCamp()
}
