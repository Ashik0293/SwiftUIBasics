//
//  SwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 25/11/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
//        ZStack(alignment: .topLeading){
//            //Rectangle()
////                .fill(.blue)
////                .frame(maxWidth: 100,maxHeight: 100)
//            Text("hello world")
//                .frame(width: 50 ,height:50)
//                //.font(.largeTitle)
//                .background(Color.blue)
//        }.frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color.red)

//        ZStack(alignment: .topLeading) {
//           // Color.purple
////            Rectangle()
////                .frame(width: .infinity, height: .infinity)
////                .background(Color.blue)
//                //.edgesIgnoringSafeArea(.all)
//            Text("hello world")
//                .frame(maxWidth: 200,maxHeight: 200)
//                .background(Color.blue)
//            HStack{
//                Text("hello world")
//                    .frame(maxWidth: 200,maxHeight: 200)
//                    .background(Color.blue)
//            }
//           
//        }
//        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
//        .background(Color.red)
        
        
        ZStack(alignment: .topLeading) {
            //Color.white
            Text("Hello world")
                .background(Color.red)
                .frame(
                    maxWidth: 200,
                    maxHeight: 200
                )
                .background(.orange)
                .padding()
            
        }
        .frame(maxWidth: 500, maxHeight: 500)
        .background(.purple)
        
        
        
        
//        ZStack(alignment: .topLeading) {
//            Color.purple
//                    .frame(width: 200, height: 200)
//                }
//                .frame(maxWidth: .infinity,maxHeight: .infinity)
//                .background(Color.red)
        
        
//        Text("Hello world")
//            .frame(maxWidth: 200, maxHeight: 200)
//            .background(Color.blue)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//            .padding()
        
        
//        ZStack{
//            HStack{
//                Text("hello world")
//                Spacer()
//                Text("hello world")
//            }
//        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//            .background(.red)
        
    
        

//        GeometryReader { geometry in
//            Text("hello world")
//                .frame(width: 50, height: 50)
//                .background(Color.blue)
//                .position(x: 25, y: 25) // Moves it to topLeading (25 because the frame is 50x50)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftUIView()
}
