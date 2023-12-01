//
//  SegmentView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct PickerView<Style:PickerStyle>: View {
    
    enum Color:String, CaseIterable, Identifiable{
        var id:String { rawValue }
        case red,green,blue
    }
    
    
    var style:Style
    
    @State var color:Color = .red
    
    var body: some View {
        VStack {
            Picker("Pick a color?", selection: $color) {
                ForEach(Color.allCases){ item in
                    Text(item.rawValue.uppercased()).tag(item)
                }
            }
            .pickerStyle(style)
            Text("Value: \(color.rawValue)")
        }
        .padding(20)
        .navigationTitle("Picker View")
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(style: .inline)
    }
}
