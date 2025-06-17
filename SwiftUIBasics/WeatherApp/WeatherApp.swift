//
//  WeatherApp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 30/11/24.
//

import SwiftUI

struct WeatherApp: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    WeatherApp()
}
