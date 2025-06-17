//
//  TextEditor.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 30/12/24.
//

import SwiftUI

struct TextEditorBootCamp: View {
    @State var text: String = "THIS IS STARTING TEXT"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                TextEditor(text: $text)
                    .frame(height: 250)
//                    .foregroundColor(.red)
//                    .background(.red)
                    .colorMultiply(Color(#colorLiteral(red: 0.7058823705, green: 0.7058823705, blue: 0.7058823705, alpha: 0.4636020281)))
                    .cornerRadius(5)
                
                Button {
                    savedText = text
                } label: {
                    Text("Save".uppercased())
                        .cornerRadius(10)
                        .fontWeight(.bold)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                        
                }
                Text("\(savedText)")
                Spacer()
            }
            .padding()
            //.background(.red)
            .navigationTitle("TextEditor BootCamp")
            
           
        }
    }
}

#Preview {
    TextEditorBootCamp()
}
