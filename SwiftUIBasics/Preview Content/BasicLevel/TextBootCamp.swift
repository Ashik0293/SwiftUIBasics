//
//  SwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 21/11/24.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        //Text(("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot."))
            Text(("Hello, World!".uppercased()))
            //.font(.body)
            //.fontWeight(.regular)
            //.fontDesign(.monospaced)
            //.foregroundStyle(.brown)
            //.underline()
            //.italic()
            //.strikethrough()
//            .underline(true, color: .red)
//            .padding(.all)
//            .strikethrough(true, pattern: .dot, color: .blue)
            //.font(.system(size: 30, weight: .heavy, design: .rounded))
            //.baselineOffset(10)
            //.kerning(10)
            .font(.custom("AvenirNext-Regular",size: 30).weight(.bold))
            .multilineTextAlignment(.center)
            .foregroundStyle(.indigo)
            .frame(width: 200, height:  100)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootCamp()
}
