//
//  NvaigationMethods.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 22/12/24.
//

import SwiftUI

struct NvaigationMethods: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
// 1. Basic Navigation with NavigationLink
struct ContentView1: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SecondView()) {
                Text("Go to Second Page")
            }
            .navigationTitle("Home")
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second Page")
            .navigationTitle("Second Page")
    }
}

// 2. Navigation with Binding
struct ContentView2: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: SecondView(),
                isActive: $isActive
            ) {
                Text("Go to Second Page")
            }
        }
    }
}

// 3. Programmatic Navigation (iOS 16+)
struct ContentView3: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            Button("Navigate") {
                path.append("SecondView")
            }
            .navigationDestination(for: String.self) { view in
                if view == "SecondView" {
                    SecondView()
                }
            }
        }
    }
}

// 4. Navigation with Data Passing
struct ContentView4: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: DetailView(data: "Passed Data")
            ) {
                Text("Go to Detail")
            }
        }
    }
}

struct DetailView: View {
    let data: String
    
    var body: some View {
        Text(data)
    }
}



#Preview {
    ContentView3()
}
