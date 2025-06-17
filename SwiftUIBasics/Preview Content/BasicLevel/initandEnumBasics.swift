//
//  initandEnumBasics.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 23/11/24.
//

import SwiftUI

struct initandEnumBasics: View {
    
    let bc : Color
    let count: Int
    let Title: String
    
    init( count: Int, fruit: fruit) {
        //self.bc = bc
        self.count = count
        
        if fruit == .apple {
            self.Title = "Apples"
            self.bc = .red
        }else {
            self.Title = "Oranges"
            self.bc = .orange
        }
        
    }
    
    enum fruit : String{
        case apple
        case orange
    }
    
    
    
    var body: some View {
        
        VStack(spacing: 15) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
    
            Text("\(Title)")
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(bc)
        .cornerRadius(10)
        
            
    }
}


    // this is first execute and then above init will take rest 
#Preview {
    HStack {
        initandEnumBasics(count: 10, fruit:.orange)
        initandEnumBasics(count: 5, fruit:.apple)
    }
}
