//
//  BasicDateInputView.swift
//  BetterRest
//
//  Created by OLEKSANDR ISAIEV on 15.11.2023.
//

import SwiftUI

struct BasicDateInputView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    var body: some View {
        NavigationStack {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)

                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)

                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            }
        }
    }
}

#Preview {
    BasicDateInputView()
}
