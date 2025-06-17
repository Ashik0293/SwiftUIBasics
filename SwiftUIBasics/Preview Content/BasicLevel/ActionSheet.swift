//
//  ActionSheet.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State private var showActionSheet = false
    @State private var selectedActionSheetType : ActionSheetType? = nil
    
    
    enum ActionSheetType{
        case myPost
        case otherPost
    }

    var body: some View {
        Button("Click Me") {
            showActionSheet.toggle()
            selectedActionSheetType = .otherPost
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    func getActionSheet() -> ActionSheet{
        
        let button1 : ActionSheet.Button = .default(Text("Share"))
        let button2 : ActionSheet.Button = .destructive(Text("delete"), action: { print("delete selected") })
        let button3 : ActionSheet.Button = .destructive(Text("report"), action: { print("report selected") })
        let button4 : ActionSheet.Button = .cancel(Text("cancel"), action: {
            print(Text("cancelled"))
        })
        
        
        switch selectedActionSheetType{
        case .myPost:
            return  ActionSheet(
                title: Text("Choose an Option"),
                message: Text("Select an action from below."),
                buttons:
                    [button1,
                     button2,
                     button3])
        case .otherPost:
            return  ActionSheet(
                title: Text("Choose an Option"),
                message: Text("Select an action from below."),
                buttons:
                    [button1,
                     button2,
                     button3,
                     button4
                    ])
            
        case .none:
            return ActionSheet(title: Text("none"))
        }
        
             
            //or
//                .default(Text("Option 1"), action: { print("Option 1 selected") }),
//                .destructive(Text("Delete"), action: { print("Delete selected") }),
//                .cancel()
            
        
        
    }
}




    #Preview {
        ActionSheetView()
    }
