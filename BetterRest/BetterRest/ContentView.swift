//
//  ContentView.swift
//  BetterRest
//
//  Created by OLEKSANDR ISAIEV on 12.11.2023.
//

import SwiftUI

struct StepperView: View {
    @Binding var value: Double
    
    var body: some View {
        Stepper("\(value.formatted()) hours",
                value: $value,
                in: 4...12,
                step: 0.25)
    }
}

struct ContentView: View {
    
    @State private var sleepAmount = 7.0
    
    var body: some View {
        StepperView(value: $sleepAmount)
    }
}

#Preview {
    ContentView()
}
