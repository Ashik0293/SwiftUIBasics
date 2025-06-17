//
//  FrameandAlignmentBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/11/24.
//

import SwiftUI

struct FrameandAlignmentBasics: View {
    var body: some View {
        
        //first
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //.background(Color.blue)
        //            .frame(width: 200 , height: 200,alignment: .leading)
       // or
        //            .background(.orange)
           // .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//            .background(Color.red)
        
        //second
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .frame(height: 100,alignment: .top)
            .background(.purple)
            .frame(width: 200)
            .background(.green)
            .frame(maxWidth: .infinity)
            .background(.orange)
            .frame(height: 400,alignment: .bottom)
            .background(.yellow)
            .frame(maxHeight: .infinity,alignment: .top)
            .background(.cyan)
            //.edgesIgnoringSafeArea(.vertical)
           
        
    }
}
//using Color.red, its takes only safe area
//using red its takes whole View
#Preview {
    FrameandAlignmentBasics()
}
