//
//  PickerView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/29/23.
//

import SwiftUI

struct PickerView: View {
    
    @State private var selected: Int = 0
    
    var body: some View {
        Picker("Numbers", selection: $selected) {
            ForEach(0..<10) { item in
                Text("\(item)").tag(item)
            }
        }
        .pickerStyle(.inline)
        .navigationTitle("Picker View")
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
