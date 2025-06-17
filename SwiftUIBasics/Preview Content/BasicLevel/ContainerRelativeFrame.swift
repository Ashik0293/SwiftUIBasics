//
//  ContainerRelativeFrame.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 17/12/24.
//

import SwiftUI

struct ContainerRelativeFrame: View {
    var body: some View {
        Color.blue
            .containerRelativeFrame(.horizontal) { length, _ in
                length/3
            }
    }
}

#Preview {
    ContainerRelativeFrame()
}
