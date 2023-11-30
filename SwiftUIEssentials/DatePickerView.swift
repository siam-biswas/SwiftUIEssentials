//
//  DatePickerView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var date = Date()
    
    var body: some View {
        DatePicker("", selection: $date)
            .datePickerStyle(.wheel)
        .navigationTitle("Date Picker")
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
