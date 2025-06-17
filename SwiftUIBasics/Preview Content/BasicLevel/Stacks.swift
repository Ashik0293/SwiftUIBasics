//
//  Stacks.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/11/24.
//

import SwiftUI

struct Stacks: View {
    /// <#Description#>
    var body: some View {
        
        //First
        /*VStack{
            Circle()
                .fill(Color.red)
                .frame(width: 100, height:  100)
            HStack{
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height:  100)
                
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 100, height:  100)
//                    .overlay(
//                        Circle()
//                            .fill(Color.blue)
//                            .frame(width: 50, height:  50)
//                    )
                //or
                ZStack{
                    Circle()
                        .fill(Color.red)
                        .frame(width: 100, height:  100)
                    
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 80, height:  80)
                    Circle()
                        .fill(Color.green)
                        .frame(width: 50, height:  50)
                }
                
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height:  100)
            }
            
            Circle()
                .fill(Color.red)
                .frame(width: 100, height:  100)
            
        }*/
        
        
        //second
        /* VStack(alignment: .leading, spacing: 20){
            Circle()
                .fill(Color.red)
                .frame(width: 100, height:  100)
            Circle()
                .fill(Color.purple)
                .frame(width: 80, height:  80)
            Circle()
                .fill(Color.green)
                .frame(width: 50, height:  50)
        }
        
        HStack(alignment: .center, spacing: 20){
            Circle()
                .fill(Color.red)
                .frame(width: 100, height:  100)
            Circle()
                .fill(Color.purple)
                .frame(width: 80, height:  80)
            Circle()
                .fill(Color.green)
                .frame(width: 50, height:  50)
        }.background(.yellow)

        
        
        //no spacing for zstack
        //more center, top, bottom, it includes all orientations of vstack and hstack and also more orientations
        ZStack(alignment: .topLeading){
            Circle()
                .fill(Color.red)
                .frame(width: 100, height:  100)
            Circle()
                .fill(Color.purple)
                .frame(width: 80, height:  80)
            Circle()
                .fill(Color.green)
                .frame(width: 50, height:  50)
        }*/
        
        /*ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 350, height:  500)
            
            //            Rectangle()
            //                .fill(Color.green)
            //                .frame(width: 50, height:  50)
            
            VStack(alignment: .leading,spacing: 30){
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.cyan)
                    .frame(width: 100, height:  100)
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 50, height:  50)
                    Rectangle()
                        .fill(Color.cyan)
                        .frame(width: 100, height:  100)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 75, height: 75)
                }.background(.white)
            }
        }*/
        
        /*VStack(alignment:.center,spacing: 20){
            Text("10")
                .font(.largeTitle)
                .underline()
            Text("Items in Your Cart:")
                .font(.caption)
                .foregroundStyle(.gray)
            
        }*/
        
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .fill(.purple)
                    .frame(width: 100, height: 100)
                Text("50")
                    .font(.largeTitle)
                
            }
            Text("50")
                .font(.largeTitle)
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                )
            
        }
        
        
    }
}

#Preview {
    Stacks()
}
