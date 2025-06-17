//
//  AnimationLevel.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct AnimationLevel: View {
    @State var isAnimated: Bool = false
    @State var isAnimated2: Bool = false
    
    
    var body: some View {
        
        //animation withAnimation parameter
        Button("Animated Button"){
//            withAnimation(.default) {
//                isAnimated.toggle()
//            }
            //            withAnimation(Animation.default.delay(2.0)) {
            //                isAnimated.toggle()
            //            }
            withAnimation(Animation.default
                //.repeatCount(5, autoreverses: false)
                .repeatForever(autoreverses: true)
            ) {
                isAnimated.toggle()
            }
        }
        
        Spacer()
        RoundedRectangle(cornerRadius: isAnimated ? 50 : 50)
            .fill(isAnimated ? Color.blue:Color.red )
            .frame(width: isAnimated ? 100 : 300, height:  isAnimated ? 100 : 300)
            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            .offset(x: isAnimated ? 100 : 0,y: isAnimated ? 100 : 0)
        Spacer()
        
        //animation without withAnimation parameter
        Button("Animated Button"){

            isAnimated2.toggle()
        }
        
        Spacer()
        RoundedRectangle(cornerRadius: isAnimated2 ? 50 : 50)
            .fill(isAnimated2 ? Color.blue:Color.red )
            .frame(width: isAnimated2 ? 100 : 300, height:  isAnimated2 ? 100 : 300)
            .rotationEffect(Angle(degrees: isAnimated2 ? 360 : 0))
            .offset(x: isAnimated2 ? 100 : 0,y: isAnimated2 ? 100 : 0)
            .animation(Animation.default
                       //.repeatCount(5, autoreverses: false)
                       .repeatForever(autoreverses: true), value: isAnimated2)
        Spacer()
        
    }
    
}

#Preview {
    AnimationLevel()
}
