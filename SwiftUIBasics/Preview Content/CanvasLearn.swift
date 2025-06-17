//
//  CanvasLearn.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 20/12/24.
//

import SwiftUI

struct CanvasLearn: View {
    var body: some View {
        Canvas { context, size in
            context.clip(to: Path(roundedRect: CGRect(x: 0, y: 0, width: 200, height: 200), cornerRadius: 10))
            context.fill(Path(ellipseIn: CGRect(x: 0, y: 10, width: 250, height: 250)),with: .color(Color.red))
        }
        .frame(width: 300, height: 300)
        .border(Color.blue)
    }
}

#Preview {
    CanvasLearn()
}
