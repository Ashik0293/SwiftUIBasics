//
//  NavigationView.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct NavigationSampleView: View {
    var body: some View {
        //only one NavigationView for one hierarchy
        NavigationView {
            ScrollView {
                NavigationLink("Hello World") {
                    MySecondScreen()
                }
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("Navigation View")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
//                leading:Image(systemName: "person.fill"),
//                trailing:Image(systemName: "gear")
                
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                   
                trailing: NavigationLink(destination: {
                    MySecondScreen()
                }, label: {
                    Image(systemName: "gear")
                })
                .accentColor(Color.red)
                
            )
           // .navigationBarBackButtonHidden(true)
            //.navigationBarHidden(true)
        }
    }
}

#Preview {
    NavigationSampleView()
}


struct MySecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
            .navigationBarHidden(true)
            VStack{
                Button("Work As like Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here", destination: Text("Third One"))
                
            }
           
        }
    }
}
