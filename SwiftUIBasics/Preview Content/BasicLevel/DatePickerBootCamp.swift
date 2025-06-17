//
//  DatePickerBootCamp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 30/12/24.
//

import SwiftUI

struct DatePickerBootCamp: View {
    @State var DateSelection : Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2024)) ?? Date()
    let enddate : Date = Date()
    
    var dateFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        //Text("\(DateSelection.description)")
        Text(dateFormatter.string(from: DateSelection))
            .font(.title)
//        DatePicker("Choose date", selection: $DateSelection)
//            .padding()
//            .background(.blue)
//            .cornerRadius(10)
//            .foregroundStyle(.white)
//            .font(.headline)
//            .padding(.horizontal,50)
//        
//        DatePicker("Choose date", selection: $DateSelection,displayedComponents: [
//            //.date
//            //.hourAndMinute
//            
//        ])
//        .accentColor(Color.red)
//            .datePickerStyle(
//                .compact
//                //.graphical
//                //.wheel
//            )
        
        DatePicker("Choose date", selection:$DateSelection,in: startingDate...enddate)
            .accentColor(Color.red)
            .datePickerStyle(
                CompactDatePickerStyle()
//                GraphicalDatePickerStyle()
//                WheelPickerStyle()
            )
        
        
    }
}

#Preview {
    DatePickerBootCamp()
}
