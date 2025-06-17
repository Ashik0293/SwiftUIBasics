//
//  foreachBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 23/11/24.
//

import SwiftUI

struct foreachBasics: View {
    
    let colors : [Color] = [.red, .blue, .green, .yellow, .orange, .purple]
    //var bc : Color
    
    var body: some View {
        /*VStack {
             ForEach(0..<10) { index in
                 
                 HStack {
                     Circle()
                         .frame(width: 30, height: 30)
                 
                 Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                     
                 }
             }
        }*/
        
        //second
//        VStack {
//            ForEach(0..<10) { index in
//                
//                Text("\(index)")
//                    .font(.largeTitle)
//                    .padding()
//                    .background(Color.red)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
//                    .padding()
//            }
//        }
        
        
        VStack{
            ForEach(colors.indices) { index in
                
                Text("\(colors[index].description)")
                    .font(.title)
                    .padding()
                    .background(colors[index])
                
            }
            

        }
        
        
        
    }
}

#Preview {
    foreachBasics()
}
