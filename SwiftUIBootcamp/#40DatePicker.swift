//
//  #40DatePicker.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 10/9/25.
//

import SwiftUI

struct _40DatePicker: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Select date is: ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            //DatePicker("Select A Date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate)
                .tint(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
        }
    }
}

#Preview {
    _40DatePicker()
}
