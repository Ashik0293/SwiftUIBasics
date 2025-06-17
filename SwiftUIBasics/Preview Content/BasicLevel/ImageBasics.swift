//
//  ImageBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/11/24.
//

import SwiftUI

struct ImageBasics: View {
    var body: some View {
        Image("aiImage")
            .resizable()
            //.renderingMode(.template)
            //.aspectRatio(contentMode: .fill)
        //or
            //.scaledToFit()
            //.scaledToFill()
            .frame(width: 300, height: 200)
            //.clipped()
            .cornerRadius(30)
            //.foregroundStyle(.orange)
            //.clipShape(
                //Circle()
               // RoundedRectangle(cornerRadius: 25.0)
                //Ellipse()
                
            //)
    }
}
//.renderingMode(.template)
//.foregroundStyle(.orange)
//both works in transparent background image only 
#Preview {
    ImageBasics()
}
