//
//  ConditionalBootCamp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct ConditionalBootCamp: View {
    
    @State var showCircle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        Button("Show Circle \(showCircle.description)"){
            showCircle.toggle()
        }
        
        if showCircle{
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
        }else{
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
        }
        Spacer()
        Button("isLoading \(isLoading.description)"){
            isLoading.toggle()
        }
        if isLoading{
            ProgressView()
            Text("Loading...")
        }else{
            Text("Not Loading...")
        }
        
            
    }
}

#Preview {
    ConditionalBootCamp()
}
