//
//  SpacerBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 23/11/24.
//

import SwiftUI

struct SpacerBasics: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        //first
        //        HStack {
        //            Rectangle()
        //                .fill()
        //                .frame(width: 100, height: 100)
        //
        //            Spacer()
        //                .frame(height: 20)
        //                .background(.red)
        //
        //            Rectangle()
        //                .fill()
        //                .frame(width: 200, height: 100)
        //        }
        
        //second
        
        /*HStack {
            
            Spacer(minLength: 0)
                .frame(height: 20)
                .background(.red)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 20)
                .background(.red)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 20)
                .background(.red)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 20)
                .background(.red)
        }
        //.padding(.horizontal, 200)
        // works Spacer(minLength: 0) when above padding works */
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.red)
                Image(systemName: "gear")
            }
            .font(.title)
            //.background(.purple)
            .padding(.horizontal)
           // .background(.blue)
            
            Spacer()
                .frame(width: 10)
                .background(.red)
        }
        .background(Color.yellow)
        .padding(1)
        
        
        
        
        
        
    }
}

#Preview {
    SpacerBasics()
}
