//
//  TextFieldSheet.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 23/12/24.
//

import SwiftUI

struct TextFieldSheet: View {
    @State private var isRegisterMailID: String = ""
    @State private var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Mail ID", text: $isRegisterMailID)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.5).cornerRadius(5))
                    .foregroundColor(.red)
                    .font(.headline)
                Button {
                    if textAppropriate() {
                        SaveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textAppropriate() ?
                                    Color.blue : Color.gray)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                        .font(.headline)
                }.disabled(!textAppropriate())
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField BootCamp")
        }
    }
    
    func textAppropriate() -> Bool{
        if isRegisterMailID.count >= 3{
            return true
        }
        return false
    }
    func SaveText(){
        dataArray.append(isRegisterMailID)
        isRegisterMailID = ""
    }

}

#Preview {
    TextFieldSheet()
}
