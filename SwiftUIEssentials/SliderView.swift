//
//  SliderView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct SliderView: View {
    
    @State private var value = 0.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Slider(value: $value,
                   in: 0...100,
                   onEditingChanged: { editing in
                isEditing = editing
            })
            Text("\(value)")
        }
        .padding(20)
        .navigationTitle("Slider View")
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
