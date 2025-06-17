//
//  PickerBootCamp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 30/12/24.
//

import SwiftUI

struct PickerBootCamp: View {
    @State var selection : String = ""
    
    let FilterOptions : [String] = ["Populer","Liked","Most Popular"]
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .systemBlue
        
        let attribute : [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attribute, for: .selected)
    }
    
    var body: some View {
        HStack{
            Text("Filter")
            Text("\(selection)")
        }
        .font(.headline)
        .foregroundStyle(.white)
        .padding()
        .padding(.horizontal)
        .background(.blue)
        .cornerRadius(10)
        .shadow(color: .black, radius: 10, x: 0, y: 0)
        
        
        Picker(selection: $selection) {
            
        } label: {
            HStack{
                Text("Filter")
                Text("\(selection)")
            }
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .padding(.horizontal)
            .background(.blue)
            .cornerRadius(10)
            .shadow(color: .black, radius: 10, x: 0, y: 0)
            
        }
        
        
        Picker(
            selection: $selection) {
                ForEach(0..<100) {index in
                    Text("\(index)").tag("\(index)")
                        .font(.headline)
                        .foregroundStyle(.brown)
                }
            } label: {
              
        
            }.pickerStyle(.menu)

        
        Picker(
            selection: $selection) {
                ForEach(FilterOptions,id: \.self){option in
                    Text("\(option)").tag("\(option)")
                        .font(.headline)
                        .foregroundStyle(.brown)
                }
                
               
            } label: {
              
        
            }.pickerStyle(.menu)
            //.background(.red)
        
        Picker(
            selection: $selection) {
                ForEach(FilterOptions,id: \.self){option in
                    Text("\(option)").tag("\(option)")
                        .font(.headline)
                        .foregroundStyle(.brown)
                }
                
               
            } label: {
              
        
            }.pickerStyle(.segmented)
            .padding()
            //.background(.red)

    }
}

#Preview {
    PickerBootCamp()
}
