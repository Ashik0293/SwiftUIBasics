//
//  ContentLayer.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 18/12/24.
//

import SwiftUI
struct ContentLayer: View {
    
    @State var Title: String = "Hi EveryOne"
    @State var backgroundLayer = Color.red
    var body: some View {
        VStack  {
            Text(Title)
                .font(.largeTitle)
            
            Button {
                self.Title = "Button pressed"
                print("\(Title)")
                ButtonPressed()
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
                            .stroke(.gray, style: .init(lineWidth: 2))
                    )
                
            }
        }
     }
    
    func ButtonPressed() {
        backgroundLayer = .blue
    }
    
    
    
}
#Preview {
    ContentLayer()
}
