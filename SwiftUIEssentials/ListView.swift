//
//  ListView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/29/23.
//

import SwiftUI


struct ListView: View {
    
    var body: some View {
            List(0..<10) { item in
                    HStack {
                        Text("\(item)")
                    }
            }
            .navigationTitle("List View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
