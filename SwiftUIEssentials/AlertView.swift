//
//  AlertView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct AlertView: View {
    
    @State public var alert:Bool = false
    
    var body: some View {
        HStack{
            Button("Show Alert") {
               alert = true
            }.alert(isPresented: $alert) {
                Alert(title: Text("Hello World!"))
            }
        }.navigationTitle("Alert View")
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
