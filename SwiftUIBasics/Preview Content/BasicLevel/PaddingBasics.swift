//
//  PaddingBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 23/11/24.
//

import SwiftUI

struct PaddingBasics: View {
    var body: some View {
        //first
        //differnce between padding and frame
        
        //        Text("Hello, World! I am Ashik")
        //            .frame(width: 100, height: 100)
        //to
        //            .frame(width: 300, height: 100)
        //            .background(.red)
        
        /*Text("Hello, World! I am Ashik")
         .padding(30)
         .background(.red)
         
         Text ("Hello, World!")
         .background(Color.yellow)
         // . padding()
         . padding(.all, 10)
         . padding (.leading, 20)//extra padding total 30 on left side
         .background (Color.blue)*/
        
        
        //second
        /*Text("Hello, World!")
         .font(.largeTitle)
         .fontWeight(.bold)
         .frame(maxWidth: .infinity,alignment: .leading)
         .padding(.leading, 20)
         .background(Color.purple)*/
        
        /*VStack(alignment: .leading) {
         Text("Hello, World!")
         .font(.largeTitle)
         .fontWeight(.bold)
         Text("Hello, World!, I am Ashik Buhari and I am a Software Developer and a UI/UX Designer and a Mobile App Developer and a Web Developer")
         //.multilineTextAlignment(.center)
         
         }
         .background(Color.red)
         .padding()
         .background(Color.blue)
         .padding(.horizontal, 10)
         .background(Color.yellow)*/
        
        //Third
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Hello, World!, I am Ashik Buhari and I am a Software Developer and a UI/UX Designer and a Mobile App Developer and a Web Developer")
            //.multilineTextAlignment(.center)
            
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.20), radius: 10, x: 10, y: 10)
        )
        .padding(.horizontal,10)
        
        
        
    }
}

#Preview {
    PaddingBasics()
}
