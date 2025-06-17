//
//  ScrollViews.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 23/11/24.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //        ScrollView(.vertical, showsIndicators: false) {
        //                VStack{
        //                    ForEach(0..<40) { index in
        //                    Rectangle()
        //                        .fill(Color.red)
        //                        .frame( width: 300,height: 300)
        //
        //                }
        //            }
        //        }
        
        
        ScrollView(showsIndicators: false){
            LazyVStack{
                ForEach(0..<50) { index in
                    ScrollView(.horizontal,showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<50) { index in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow( radius: 5)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViews()
}
