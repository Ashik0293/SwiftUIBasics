//
//  BindingVariable.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 18/12/24.
//

import SwiftUI

struct BindingVariable: View {
    
    @State var backgroundColor: Color = .green
    
    
    var body: some View {
        ZStack  {
            backgroundColor.ignoresSafeArea(.all)
            
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

#Preview {
    BindingVariable()
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button {
            backgroundColor = .orange
        } label: {
            Text("Finish".uppercased())
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal,20)
                .background(
                    Capsule()
                        .fill(Color.blue)
                    //.stroke(.gray, style: .init(lineWidth: 2))
                )
            
        }
    }
}
