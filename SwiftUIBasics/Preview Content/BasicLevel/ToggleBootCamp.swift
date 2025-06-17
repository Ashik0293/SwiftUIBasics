//
//  ToggleBootCamp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 30/12/24.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var ToggleBool: Bool = false
    
    var body: some View {
        HStack{
            Text("Toggle Status: \(ToggleBool ? "Online" : "Offline")")
                .font(.title)
        }
        VStack {
            Toggle(isOn: $ToggleBool) {
                Text("Change Status")
            }.toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))))
        }
        .padding(.horizontal, 100)
        Spacer()
    }
}

#Preview {
    ToggleBootCamp()
}
