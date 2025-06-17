//
//  LazyGridBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 25/11/24.
//

import SwiftUI

struct LazyGridBasics: View {
    
    var GridColumn : [ GridItem] = [
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        
        
        //difference flexible vs adaptive
        // flexible will crash over than the screensize adaptive wont crash
        GridItem(.flexible(minimum: 100, maximum: 600), spacing: nil, alignment: nil),
        // vs
        
        GridItem(.adaptive(minimum: 5000, maximum: 5000), spacing: nil, alignment: nil),
        
        //        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
        //        GridItem(.adaptive(minimum: 150, maximum: 100), spacing: nil, alignment: nil),
        
        
    ]
    
    let gridcolumns : [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
        //for first
        //        LazyVGrid(columns: GridColumn) {
        //            ForEach(0..<50) { index in
        //                Rectangle()
        //                    .frame(height: 50)
        //            }
        
        
        //second
        
        ScrollView{
            
            
            LazyVGrid(columns: gridcolumns,alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders], content: {
                
                ForEach(0..<2) { index in
                    
                    // newsection
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 50)
                        }} header: {
                            Text("Section \(index)")
                                .font(.title)
                                .foregroundStyle(.white)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.red)
                            //.cornerRadius(5)
                                .padding()
                        } footer: {
                            
                        }
                    
                    
                    
                    
                    
                    //old section
                    // Section(
                    //                        header: Text("Section \(index)")
                    //                        .font(.title)
                    //                        .foregroundStyle(.white)
                    //                        .padding()
                    //                        .frame(maxWidth: .infinity, alignment: .leading)
                    //                        .background(.red)
                    //                        //.cornerRadius(5)
                    //                        .padding()){
                    //                            ForEach(0..<50) { index in
                    //                                Rectangle()
                    //                                    .frame(height: 50)
                    //                            }
                    //                    }
                    
                    
                }
                
            })
        }
        
        
        
    }
}


#Preview {
    LazyGridBasics()
}
