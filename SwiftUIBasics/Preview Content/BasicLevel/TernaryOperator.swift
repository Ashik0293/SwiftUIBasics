//
//  TernaryOperator.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        Button("Show Circle \(isStartingState.description)"){
            isStartingState.toggle()
        }
        
        Text(isStartingState ? "Red" : "Blue")
       
            RoundedRectangle(cornerRadius: 10)
            .fill(isStartingState ? Color.red : Color.blue )
                .frame(width: 100, height: 100)
    
    }
}

#Preview {
    TernaryOperator()
}
