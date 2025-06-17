//
//  AlertBootCamp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct AlertBootCamp: View {
    
    @State var showAlert: Bool = false
    @State var alertTitle : String = ""
    @State var alertMessage: String = ""
    @State var alertType : Alerts? = nil
    
    enum Alerts{
        case success
        case error
    }
    
    
    var body: some View {
        VStack {
            Button("Press Button One"){
                showAlert.toggle()
                alertType = .success
                
//                alertTitle = "success"
//                alertMessage = "success message"
            }
            Button("Press Button two"){
                showAlert.toggle()
                alertType = .error
//                alertTitle = "error"
//                alertMessage = "error message"
            }
        }
        .alert(isPresented: $showAlert){
            // Alert(title: Text("Error"), message: Text("There Was An error"))
            alert()
        }
    }
    
    func alert() -> Alert{
        switch alertType {
        case .success:
            return Alert(title: Text("success"))
        case .error:
            return Alert(title: Text(alertTitle),message: Text(alertMessage), primaryButton: .destructive(Text("Delete"), action: {
                print("hi")
            }), secondaryButton: .cancel() )
        case nil:
            return Alert(title: Text("error"))
        }
        //method Two
//        return Alert(title: Text(alertTitle),message: Text(alertMessage), primaryButton: .destructive(Text("Delete"), action: {
//                   print("hi")
//        }), secondaryButton: .cancel() )
        
        
        
        //method one
//       return Alert(title: Text("Error"), primaryButton: .destructive(Text("Delete"), action: {
//           print("hi")
//        }), secondaryButton: .cancel() )
        
    }
}

#Preview {
    AlertBootCamp()
}
