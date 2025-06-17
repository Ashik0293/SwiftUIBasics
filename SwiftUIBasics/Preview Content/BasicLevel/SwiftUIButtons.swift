//
//  SwiftUIButtons.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 18/12/24.
//

import SwiftUI

struct SwiftUIButtons: View {
    
    @State var Title = "Hi Everyone!..."
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(Title)
            //Button One
            Button("Click Me"){
                
                self.Title = "Title Changed"
                print("\(Title)")
            }
            .accentColor(.red)
            
            //Button two
            Button {
                self.Title = "Button Two pressed"
                print("\(Title)")
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.green
                            .cornerRadius(10)
                            .shadow(radius:10)
                     
                    )
            }
            
            Button {
                self.Title = "Button # Three pressed"
                print("\(Title)")
            } label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 80, height: 80)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                    }
                
            }
            
            
            Button {
                self.Title = "Button # Four pressed"
                print("\(Title)")
            } label: {
                Text("Finish".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.red)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Capsule()
                            //.fill(Color.blue)
                            .stroke(.gray, style: .init(lineWidth: 2))
                    )
                
            }


        })
    }
}

#Preview {
    SwiftUIButtons()
}
