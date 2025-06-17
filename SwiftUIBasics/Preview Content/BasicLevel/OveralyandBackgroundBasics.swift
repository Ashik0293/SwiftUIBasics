//
//  OveralyandBackgroundBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/11/24.
//

import SwiftUI

struct OveralyandBackgroundBasics: View {
    var body: some View {
        //First
        /*Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 200, height: 200)
        // background we can fill any colors, image, shapes , any etc,..
            .background(
                //.red
                //.linearGradient(Gradient(colors: [Color(.blue), Color(.red)]), startPoint: .leading, endPoint: .trailing)
                Circle()
                    //.fill(Color.purple)
                    .fill(.linearGradient(Gradient(colors: [Color(.blue), Color(.red)]), startPoint: .leading, endPoint: .trailing))
            )
            .frame(width: 220 , height: 220)
            .background(
                Circle()
                    .fill(Color.blue)
            )*/
        
        //difference overlay and background
        //Second
       /* Circle()
            .fill(.purple)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("Ashik")
                    .font(.title)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                .fill(Color.red)
                .frame(width: 110, height: 110, alignment: .center)
            )*/
        
        //
        
        
        //third
        /*Rectangle()
            .frame(width: 110, height: 100, alignment: .center)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                ,alignment: .bottomTrailing
            )
            .background(
                Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
                ,alignment: .center
            )*/
        
        //Four
        /*Image("aiImage")
            //.font(.system(size: 30))
            //.foregroundStyle(.white)
            .resizable()
            .frame(width: 30,height: 30)
            .clipShape(Circle())*/
        //or
        Image(systemName: "heart.fill")
            .font(.system(size: 30))
            .foregroundStyle(.white)
            .frame(width: 30,height: 30)
            .background(
                Circle()
                //.fill(.red)
                    .fill(.linearGradient(Gradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 80, height:80)
                .shadow(color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(0.5),radius: 10, x: 0, y: 10)
                
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("10")
                                    .foregroundStyle(.white)
                            )
                            .shadow(color: Color(#colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)).opacity(0.5),radius: 10, x: 5, y: 5)
                       // we can also use it
                            //.offset(x: 20, y: 35)
                        ,alignment: .bottomTrailing
                            
                    )
                //,alignment: .center
            )
            
    
        
        
    }
}

#Preview {
    OveralyandBackgroundBasics()
}
