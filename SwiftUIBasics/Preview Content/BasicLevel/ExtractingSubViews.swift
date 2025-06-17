//
//  ExtractingSubViews.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 18/12/24.
//

import SwiftUI

struct ExtractingSubViews: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.3155861497, green: 0.1523542702, blue: 0.5989382267, alpha: 1)).edgesIgnoringSafeArea(.all)
            contentLayer
            
        }
    }
        
        
    var contentLayer : some View{
        HStack {
        ExtractedView(Title: "Apples", Color: .cyan, Count: 8)
        ExtractedView(Title: "Oranges", Color: .red, Count: 10)
        ExtractedView(Title: "PineApple", Color: .blue, Count: 20)
        }
    }
    
}

#Preview {
    ExtractingSubViews()
}

struct ExtractedView: View {
    let Title : String
    let Color : Color
    let Count : Int
    
    var body: some View {
        VStack{
            Text(Title)
            Text("\(Count)")
        }.padding()
            .background(Color)
            .cornerRadius(10)
    }
}
