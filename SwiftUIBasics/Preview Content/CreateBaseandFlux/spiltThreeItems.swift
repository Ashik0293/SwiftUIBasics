//
//  spiltThreeItems.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 27/11/24.
//

import SwiftUI

struct spiltThreeItems: View {
    var body: some View {
       
        HStack(){
            Rectangle()
                .fill(.green)
                .frame(width: 50,height: 50)
                .frame(maxWidth: 80,maxHeight: .infinity)
                .background(Color.brown)
            Rectangle()
                .fill(.green)
                .frame(width: 50,height: 50)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color.brown)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 10,height: 10)
                .padding()
                .frame(maxHeight: .infinity,alignment: .topTrailing)
                .background(Color.brown)
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(Color.gray)
        .padding(10)
        
        
        
        HStack{
            ZStack{
                iconRectangle
                personIcon
            }
            ZStack(alignment: .leading ){
                TextRectangle
                nameStack
            }
            ZStack(alignment: .topTrailing){
                circleRectangle
                statusCircle
            }
        }.frame(maxWidth: .infinity, maxHeight:100)
            .background(Color.gray)
            .cornerRadius(10)
            .padding(10)
        
        

    }
    
    
   
    
    private var iconRectangle: some View {
        Rectangle()
            .fill(.green)
            .frame(width: 80)
    }
    
    private var personIcon: some View {
        Image(systemName: "person.crop.circle")
            .resizable()
            .frame(width: 60,height: 60)
    }
    
    
    private var TextRectangle: some View {
        Rectangle()
            .fill(.blue)
            
    }
    
    private var nameStack: some View {
        VStack{
            Text("Hello World")
            Text("Hello World")
        }.frame(maxWidth: .infinity,maxHeight: 80,alignment: .leading)
            .background(Color.brown)
            .padding(.horizontal,20)
    }

    private var circleRectangle: some View {
        Rectangle()
            .fill(.yellow)
            .frame(width: 50)
    }
    
    private var statusCircle: some View {
        Circle()
            .fill(.white)
            .frame(width: 10,height: 10)
            .padding()
    }
    
}

#Preview {
    spiltThreeItems()
}
