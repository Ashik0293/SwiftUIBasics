//
//  ExtractingFunctions.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 18/12/24.
//

import SwiftUI

struct ExtractingFunctions: View {
    
    @State var backGroundColor =  Color.pink
    @State var Title = ""
    
    var body: some View {
        ZStack{
            backGroundColor
            //.edgesIgnoringSafeArea(.all)
            
            contentLayer
            
        }
    }
    
    func buttonPressed(){
        backGroundColor = Color.yellow
    }
    
    private var contentLayer: some View{
        VStack  {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                self.Title = "Button pressed"
                print("\(Title)")
                buttonPressed()
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
}

#Preview {
    ExtractingFunctions()
}
