//
//  PopOverBootCamp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//


import SwiftUI

struct PopOverBootCamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
        
            Button {
                showSheet.toggle()
            } label: {
               Text("Pop Up Sheet")
                    .foregroundStyle(.green)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                    
            }
            //METHOD ONE - SHEET
//            .sheet(isPresented: $showSheet) {
//                 NewScreen()
//            }
            
            
            // TRANSITION is dynamic recommended by youtuber 
            //METHOD TWO - TRANSITION
//            ZStack{
//                if showSheet{
//                    NewScreen(showSheet: $showSheet)
//                        //.safeAreaPadding(.top , 100)
//                        .padding(.top , 10)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }.zIndex(2.0)
            
            //METHOD THird - OFFSET
            
            NewScreen(showSheet: $showSheet)
                .padding(.top , UIScreen.main.bounds.height - 150)
                //.offset(y:showSheet ? 0 : 300)
                .offset(y:showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            
        }
    }
}



#Preview {
    PopOverBootCamp()
   // SecondScreen()
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showSheet : Bool
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            
            Button {
                presentationMode.wrappedValue.dismiss()
                showSheet.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(10)
                    
                
            }
        }
//        .swipeToDismiss {
//            withAnimation(.spring()) {
//                showSheet.toggle()
//            }
//        }
//    
    }
}
