//
//  AnimationTransition.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct AnimationTransition: View {
    @State var showView: Bool = false
    
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Animated Button"){
                    showView.toggle()
                }
                Spacer()
            }
            if showView{
                RoundedRectangle(cornerRadius:50)
                .fill(Color.blue )
                .frame( height:  UIScreen.main.bounds.height * 0.5)
                //.transition(.slide)
                //.transition(.move(edge: .bottom))
                //.opacity(showView ? 1.0 : 0)
                //.animation(.easeInOut)
                //opacity Tranistion
                //.transition(AnyTransition.opacity.animation(.easeInOut))
                //.transition(AnyTransition.scale.animation(.easeInOut))
                //.transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
                .transition(.asymmetric(insertion: .move(edge: .leading), removal: AnyTransition.opacity.animation(.easeInOut)))
                .animation(.spring())
                
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
}

#Preview {
    AnimationTransition()
}
