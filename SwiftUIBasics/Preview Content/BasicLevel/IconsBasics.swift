//
//  IconsBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/11/24.
//

import SwiftUI

struct IconsBasics: View {
    var body: some View {
        //Image(systemName: "heart.fill")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)//its for colored one
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fill)
        //or
            //.scaledToFit()
            //.scaledToFill()
            //.font(.title)
            //.font(.system(size:200))
            .foregroundStyle(Color(#colorLiteral(red: 0.7003613946, green: 1, blue: 1, alpha: 1)))
            //.frame(width: 300, height: 300)
            //.clipped() //if needed to cut outer frame
        
    }
}

#Preview {
    IconsBasics()
}
//you can download apple all system icons in apple design resources in apple
//https://developer.apple.com/design/resources/
//download sf symbols
