//
//  HowToCreateBase.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 25/11/24.
//

import SwiftUI

struct HowToCreateBase: View {
    var body: some View {
        // Approach 1: Add alignment to the infinity frame
        ZStack(alignment: .topLeading) {
            Text("Hello world")
                .frame(
                    maxWidth: 200,
                    maxHeight: 200
                )
                .background(.orange)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)  // Add alignment here
        .background(.purple)
        
        // Approach 2: Use a spacer to push the ZStack
        ZStack(alignment: .topLeading) {
            Color.clear  // or Spacer() that fills the space
            Text("Hello world")
                .frame(
                    maxWidth: 200,
                    maxHeight: 200
                )
                .background(.orange)
                .padding()
        }
        .background(.purple)
        
        
        //Approach 3:
        GeometryReader { geometry in
            Text("hello world")
                .frame(width: 50, height: 50)
                .background(Color.blue)
                .position(x: 25, y: 25) // Moves it to topLeading (25 because the frame is 50x50)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    
        //Approach 4:
    //Among the three approaches, the third one is generally considered the best practice:
    // This is Best way to create base
    ZStack(alignment: .topLeading) {
        Rectangle()  // Or use Color.clear
            .foregroundColor(.clear)  // Makes it invisible but maintains space
        Text("Hello world")
            .frame(
                maxWidth: 200,
                maxHeight: 200
            )
            .background(.orange)
            .padding()
    }
    .background(.purple)
        
        
        //Approach 5:
        Text("Hello World")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        //or
        //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .center))
            .background(Color.purple)
            
    
    
    //        Here's why this is the best approach:
    //
    //        Explicit Space Allocation: Using Rectangle().foregroundColor(.clear) explicitly creates a view that takes up space, ensuring the ZStack expands to fill its parent.
    //        Clean and Readable: It's more semantically clear than using Color.clear or a Spacer().
    //        Predictable Layout: It guarantees the ZStack will take up the full available space while keeping the layout intentions clear.
    //        Flexible: You can easily modify the clear rectangle if you need to add more background logic later.
    //
    //        The first approach (with .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)) works, but it's slightly less explicit about space allocation.
    //        The second approach with Color.clear is similar, but the Rectangle() method is slightly more intentional and readable.
    //        So, the third approach strikes the best balance between clarity, readability, and layout control in SwiftUI.
    
}
}

#Preview {
    HowToCreateBase()
}

//question
//when give Color.blue only its move the text in topLeading of the zstack without using  Color.blue, its move center if alignment: .topLeading,why?
//ZStack(alignment: .topLeading) {
//            Color.blue
//            Text("Hello world")
//                .frame(
//                    maxWidth: 200,
//                    maxHeight: 200
//                )
//                .background(.orange)
//                .padding()
//        }
//        .background(.purple)


//Ah, let me explain why this behavior occurs in SwiftUI!
//The reason is that when you don't have Color.blue, the ZStack only contains the Text view which has a specific frame size (200x200). Without a background color filling the ZStack, the ZStack shrinks to fit just the Text view's size. This causes the Text to appear centered because the ZStack itself is only as big as the Text frame.
//When you add Color.blue, it automatically fills the entire available space of the parent view, making the ZStack expand to its parent's full size. This gives the proper context for .topLeading alignment to work, as now there's actually space for the Text to be positioned within.
//Here's how to fix it without using Color.blue:
//swiftCopy

/*ZStack(alignment: .topLeading) {
 Text("Hello world")
 .frame(
 maxWidth: 200,
 maxHeight: 200
 )
 .background(.orange)
 .padding()
 }
 .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)  // Add this
 .background(.purple)
 Or alternatively:
 swiftCopyZStack(alignment: .topLeading) {
 Rectangle()  // Or use Color.clear
 .foregroundColor(.clear)  // Makes it invisible but maintains space
 Text("Hello world")
 .frame(
 maxWidth: 200,
 maxHeight: 200
 )
 .background(.orange)
 .padding()
 }
 .background(.purple)
 Both solutions work because they ensure the ZStack has a defined space to work with, allowing the alignment to take effect properly.
 
 //question2
 you are saying above like this [
 The reason is that when you don't have Color.blue, the ZStack only contains the Text view which has a specific frame size (200x200). Without a background color filling the ZStack, the ZStack shrinks to fit just the Text view's size. This causes the Text to appear centered because the ZStack itself is only as big as the Text frame.
 When you add Color.blue, it automatically fills the entire available space of the parent view, making the ZStack expand to its parent's full size. This gives the proper context for .topLeading alignment to work, as now there's actually space for the Text to be positioned within.], but when zstack frame is maxwidth and height was infinity, then why its taking textframe
 
 ZStack(alignment: .topLeading) {
 Text("Hello world")
 .frame(
 maxWidth: 200,
 maxHeight: 200
 )
 .background(.orange)
 .padding()
 }
 .frame(maxWidth: .infinity, maxHeight: .infinity)
 .background(.purple)
 Ah, great observation! Let me clarify this behavior:
 In SwiftUI, even when you set .frame(maxWidth: .infinity, maxHeight: .infinity) on the ZStack, it still needs something to actually "push" it to take up that space. The maxWidth and maxHeight parameters only specify the maximum size the view is allowed to grow to, but they don't force the view to expand to that size.
 Think of it like this:
 
 The Text has a fixed frame of 200x200
 The ZStack is told it CAN grow up to infinity (with .frame(maxWidth: .infinity, maxHeight: .infinity))
 But since nothing is actively pushing it to grow, it defaults to wrapping around its content (the Text)
 
 To make the ZStack actually expand to fill the space, you need one of these approaches:
 swiftCopy// Approach 1: Add alignment to the infinity frame
 ZStack(alignment: .topLeading) {
 Text("Hello world")
 .frame(
 maxWidth: 200,
 maxHeight: 200
 )
 .background(.orange)
 .padding()
 }
 .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)  // Add alignment here
 .background(.purple)
 
 // Approach 2: Use a spacer to push the ZStack
 ZStack(alignment: .topLeading) {
 Color.clear  // or Spacer() that fills the space
 Text("Hello world")
 .frame(
 maxWidth: 200,
 maxHeight: 200
 )
 .background(.orange)
 .padding()
 }
 .background(.purple)
 The key difference is that:
 
 Just saying "you can be infinite" (.infinity) doesn't make the view expand
 You need either an alignment to position within that infinite space, or
 Something inside the view (like Color.clear or Color.blue) that actively pushes it to expand
 
 This is part of SwiftUI's "layout neutrality" where views only take the space they need unless explicitly pushed to take more.*/
