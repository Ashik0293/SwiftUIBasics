//
//  Shapes.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 21/11/24.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.green)
            //.foregroundStyle(.blue)
            //.stroke()
            //.stroke(.blue, lineWidth: 20)
            //.stroke(.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash:  [10,30], dashPhase: 5))
            //.trim(from: 0.1, to: 1.0)
            //.stroke(style: .init(lineWidth: 20, lineCap: .round, dash:  [10,30], dashPhase: 10))
           // .stroke(.blue,lineWidth: 50)
            .frame(width: 300, height:  200)
            //.offset(y: animateCircle ? 0 : -1000)
    }
}

#Preview {
    Shapes()
}
