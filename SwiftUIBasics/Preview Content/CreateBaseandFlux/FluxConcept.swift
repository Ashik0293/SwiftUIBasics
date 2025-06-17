//
//  SwiftUIView.swift
//  SwiftUIExerciseOne
//
//  Created by Mohamed Ashik Buhari on 30/11/24.
//

import SwiftUI


func fluxs(_ multiplier: CGFloat) -> CGFloat {
    return UIScreen.main.bounds.width * (multiplier / 10)
}



struct FlexibleLayout: View {
    
    let colors = [Color.red, Color.green, Color.blue]
    
    let flux = UIScreen.main.bounds.width
    //using gementry
//    let geometrysafeAreaHeight = geometry.safeAreaInsets.top + geometry.safeAreaInsets.bottom
    
    let safeAreaHeight = UIScreen.main.bounds.height -
                (UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0) -
                (UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0)
    
    
    let safeAreaInsets = getSafeAreaInsets()
    var body: some View {
        
        let safeAreaHeight2 = safeAreaInsets.top + safeAreaInsets.bottom
        
        //Approach 1: Using Spacer (Proportional Space Distribution)
        //        HStack {
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 100) // Fixed width
        //            Spacer()
        //                .frame(maxWidth: .infinity) // Flexible width
        //            Rectangle()
        //                .fill(Color.blue)
        //                .frame(width: 50) // Fixed width
        //        }
        //        .frame(height: 100)
        
        
        //Approach 2: Using flexible() with Grids
        //        let columns = [
        //            GridItem(.flexible()), // Adjusts width dynamically
        //            GridItem(.flexible()),
        //            GridItem(.flexible())
        //        ]
        //
        //        LazyVGrid(columns: columns, spacing: 10) {
        //            ForEach(0..<colors.count) { index in
        //                Rectangle()
        //                    .fill(colors[index])
        //                    .frame(height: 100)
        //            }
        //        }
        //        .padding()
        
        
        // Approach 3: Using GeometryReader for Proportional Layouts
        //        GeometryReader { geometry in
        //            HStack {
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: geometry.size.width * 0.2) // 30% of width
        //                Rectangle()
        //                    .fill(Color.green)
        //                    .frame(width: geometry.size.width * 0.6) // 50% of width
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: geometry.size.width * 0.2) // 20% of width
        //            }
        //        }
        //        .frame(maxWidth: .infinity,maxHeight: 100)
        //            .cornerRadius(10)
        //            .padding(10)
        
        
        //Approach 4: Flexible Space with Fractions in .frame
        //        HStack {
        //                   Rectangle()
        //                       .fill(Color.red)
        //                       .frame(maxWidth: .infinity) // Flexible width
        //                   Rectangle()
        //                       .fill(Color.green)
        //                       .frame(width: 100) // Fixed width
        //                   Rectangle()
        //                       .fill(Color.blue)
        //                       .frame(maxWidth: .infinity) // Flexible width
        //               }
        //               .frame(height: 100)
        
        
        
        //My question: in react native without giving statically width its will occupy width its percentage with giving flux 2 or 3 or 1 like that
        //In SwiftUI, you can achieve dynamic proportional widths or heights similar to React Native's flex property by using Spacer, GeometryReader, or the .layoutPriority() modifier. Here's how to replicate the behavior of React Native's flex concept
        
        
        
        //        HStack {
        //            Color.red
        //                .aspectRatio(1, contentMode: .fit)
        //                //.frame(maxWidth: .infinity)
        //
        //            Color.green
        //                .aspectRatio(1, contentMode: .fill)
        //                //.frame(maxWidth: .infinity)
        //
        //            Color.blue
        //                .aspectRatio(1, contentMode: .fit)
        //                //.frame(maxWidth: .infinity)
        //        }
        //        .frame(maxWidth: .infinity, maxHeight: 300)
        
        //        HStack {
        //            Color.red
        //                .frame(width: UIScreen.main.bounds.width * 0.3) // 20% width
        //
        //            Color.green
        //                .frame(width: UIScreen.main.bounds.width * 0.5) // 50% width
        //
        //            Color.blue
        //                .frame(width: UIScreen.main.bounds.width * 0.2) // 30% width
        //        }
        //        .frame(maxWidth: .infinity, maxHeight: 100)
        //        .padding(10)
        
        
//        
//                HStack(spacing: 10){
//                    Rectangle()
//                        .fill(Color.blue)
//                        //.frame(width: fluxs(2))
//                        .frame(width: UIScreen.main.bounds.size.width * 0.20)
//                        //.cornerRadius(10)
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: UIScreen.main.bounds.size.width * 0.5)
//                        //.cornerRadius(10)
//                    Rectangle()
//                        .fill(Color.yellow)
//                        .frame(width: UIScreen.main.bounds.size.width * 0.20)
//                        //.cornerRadius(10)
//        
//                }.frame(maxWidth: .infinity,maxHeight: 100)
//                    .cornerRadius(10)
//                    .padding(10)
        
        
//                HStack{
//        
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: UIScreen.main.bounds.width * 0.50)
//                        .cornerRadius(10)
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: UIScreen.main.bounds.width * 0.20)
//                        .cornerRadius(10)
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: UIScreen.main.bounds.width * 0.20)
//                        .cornerRadius(10)
//        
//                }.frame(maxWidth: .infinity,maxHeight: 100)
//                    .padding(10)
        
        
        
        ZStack{
            baseRectangle
            VStack{
                Rectangle()
                    .fill(Color.yellow)
                    .frame(height: safeAreaHeight * 0.10)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: safeAreaHeight * 0.30)
                Rectangle()
                    .fill(Color.green)
                    .frame(height: safeAreaHeight * 0.40)
            }.frame(width: 100)
                .cornerRadius(10)
            
                .padding(10)
                
            
        }
        
        
        
    }
    
    private var baseRectangle: some View {
        Rectangle()
            .fill(Color.red)
            
    }
    
}

#Preview {
    FlexibleLayout()
}
private func getSafeAreaInsets() -> UIEdgeInsets {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let keyWindow = windowScene.windows.first(where: { $0.isKeyWindow }) {
            return keyWindow.safeAreaInsets
        }
        return .zero
    }
