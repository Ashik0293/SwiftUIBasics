//
//  PopUpSheets.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct PopUpSheets: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
        
            Button {
                showSheet.toggle()
            } label: {
               Text("Pop Up Sheet")
                    .foregroundStyle(.green)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                    
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
            //or // comment any one
            .sheet(isPresented: $showSheet) {
                //Donot add conditional logics here
                //donot add if else conditions here
//                Color.blue
//                    .ignoresSafeArea(.all)
                SecondScreen()
            }
            
        }
    }
}



#Preview {
    PopUpSheets()
   // SecondScreen()
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(10)
                    
                
            }
        }
    }
}
