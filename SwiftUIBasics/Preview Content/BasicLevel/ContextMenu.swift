//
//  ContextMenu.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
//            Rectangle()
//                .frame(width: 230, height: 150)
//                .background(Color.red)
//                .cornerRadius(10)
            
//            VStack(alignment: .leading, spacing: 20){
//                Image(systemName: "house.fill")
//                    .font(.title)
//                Text("Swiftfull Thinking")
//                    .font(.headline)
//                Text("How to Use Context Menu")
//                    .font(.subheadline)
//                
//            }
//            .foregroundStyle(.white)
//            .padding(30)
//            .background(Color.red.cornerRadius(10))
//            .contextMenu(menuItems: {
//                Text("Share")
//                Text("Share")
//            })
//        
        Canvas { context, size in
            context.stroke(
                Path(ellipseIn: CGRect(origin: .zero, size: size)),
                with: .color(.green),
                lineWidth: 4)
        }
        .frame(width: 300, height: 200)
        .border(Color.blue)
        
        Canvas(
                    opaque: false,
                    colorMode: .nonLinear,
                    rendersAsynchronously: true
                ) { context, size in
                    context.opacity = 0.3
                    
                    let rect = CGRect(origin: .zero, size: size)
                    
                    var path = Circle().path(in: rect)
                    context.fill(path, with: .color(.red))

//                    let newRect = rect.applying(.init(scaleX: 0.8, y: 0.8))
//                    path = Circle().path(in: newRect)
//                    context.fill(path, with: .color(.red))
                }

    }
}

#Preview {
    ContextMenu()
}
