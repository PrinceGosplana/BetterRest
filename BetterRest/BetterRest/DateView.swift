//
//  DateView.swift
//  BetterRest
//
//  Created by OLEKSANDR ISAIEV on 12.11.2023.
//

import SwiftUI

struct DateView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            Text(Date.now, format: .dateTime.hour().minute())
            Text(Date.now.formatted(date: .long, time: .shortened))
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
                .labelsHidden()
        }
    }
    
    func exampleDates() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
    
    func exampleDatesSmartWay() {
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
    }
}

#Preview {
    DateView()
}
