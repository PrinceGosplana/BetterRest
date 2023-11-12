//
//  ContentView.swift
//  BetterRest
//
//  Created by OLEKSANDR ISAIEV on 12.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 7.0
    
    var body: some View {
        Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12)
    }
}

#Preview {
    ContentView()
}
