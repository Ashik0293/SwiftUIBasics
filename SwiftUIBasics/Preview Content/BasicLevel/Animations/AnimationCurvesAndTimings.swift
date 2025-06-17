//
//  AnimationCurvesAndTimings.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct AnimationCurvesAndTimings: View {
    @State var isAnimated: Bool = false
    @State var timing: Double = 10.0
    
    var body: some View {
        Button("Animated Button"){
            isAnimated.toggle()
        }
        
        Spacer()
        
        //best one spring
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.red )
            .frame(width: isAnimated ? 300 : 50, height:  100 )
            .animation( .spring, value: isAnimated)
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.red )
            .frame(width: isAnimated ? 300 : 50, height:  100 )
            .animation( .spring(response: 0.5, dampingFraction: 0.3, blendDuration: 1.0), value: isAnimated)
        
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.red )
            .frame(width: isAnimated ? 300 : 50, height:  100 )
            .animation( .bouncy, value: isAnimated)
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.red )
            .frame(width: isAnimated ? 300 : 50, height:  100 )
            .animation( .default, value: isAnimated)
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.red )
            .frame(width: isAnimated ? 300 : 50, height:  100 )
            .animation( .easeIn(duration: timing), value: isAnimated)
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.red )
            .frame(width: isAnimated ? 300 : 50, height:  100 )
            .animation( .easeInOut(duration: timing), value: isAnimated)
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.red )
            .frame(width: isAnimated ? 300 : 50, height:  100 )
            .animation( .easeOut(duration: timing), value: isAnimated)
       
    }
}

#Preview {
    AnimationCurvesAndTimings()
}
