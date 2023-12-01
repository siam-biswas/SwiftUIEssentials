//
//  SheetView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct SheetView: View {
    
    @State private var showing = false

    var body: some View {
        Button("Show") {
            showing.toggle()
        }
        .sheet(isPresented: $showing) {
            Text("Hello World!")
                .presentationDetents([.medium, .large])
                .presentationBackground(.mint)
        }
        .navigationTitle("Sheet View")
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}


