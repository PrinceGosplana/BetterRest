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
        DatePicker("Please enter a date", selection: $wakeUp)
    }
}

#Preview {
    DateView()
}
