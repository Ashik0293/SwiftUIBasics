//
//  SafeAreaBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 25/11/24.
//

import SwiftUI

struct SafeAreaBasics: View {
    var body: some View {
        
        
        //TO respect safe are
        //        Text("Hello, World!")
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(Color.red)
        //            .padding(.vertical)//to use it
        
        //by default respect safe area
                Rectangle()
                    .fill(Color.red)
                    .edgesIgnoringSafeArea(.all)
        
        
        //        VStack {
        //            Text("Hello, World!")
        //            Spacer()
        //
        //        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(Color.red)
        //            .padding(.vertical)
        
        
        //ex1 not efficient
        //        VStack {
        //            Text("Hello, World!")
        //                .padding(.top,30)
        //            Spacer()
        //        }
        //        .frame(maxWidth: .infinity, maxHeight: .infinity)
        //        .background(Color.red)
        //        .padding(.vertical)//to use it
        //        .edgesIgnoringSafeArea(.all)
        
        //ex2
//         ZStack{
//                    Color.blue
//                        //.edgesIgnoringSafeArea(.all)
//                    VStack {
//                        Text("Hello, World!")
//                            .padding(.top,30)
//                        Spacer()
//                    }
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    //.background(Color.red)
//                    
//        
//                }
        //ex3
//        ZStack{
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            ScrollView{
//                
//                VStack {
//                    Text("Hello, World!")
//                        .font(.largeTitle)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                    //.safeAreaPadding(.all)
//                    ForEach(0..<10) { index in
//                        RoundedRectangle(cornerRadius: 25)
//                            .fill(Color.red)
//                            .frame(height: 150)
//                            .shadow(radius: 10)
//                            .padding(10)
//                        
//                    }
//                }
//            }
//            //zstack as background or use background instead below efficiently
//            //.background(Color.yellow)
//            //            .background(Color.blue
//            //                .edgesIgnoringSafeArea(.all)
//            //
//            //            )
//        }
//        
        
//        Text("Hi")
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color.blue
//                .ignoresSafeArea(.keyboard)
//            )
            
        
        
       
    }
}

#Preview {
    SafeAreaBasics()
}
