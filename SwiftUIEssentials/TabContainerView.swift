//
//  TabContainerView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct TabContainerView<Style:TabViewStyle>: View {
    
    var style:Style
    
    var body: some View {
        TabView {
            TabChildView(background: .mint)
                .background(.black)
                .tabItem {
                    Text("First")
                }
            TabChildView(background: .cyan)
                .tabItem {
                    Text("Second")
                }
        }
        .tabViewStyle(style)
        .navigationTitle("Tabs View")
    }
}

struct TabChildView: View {
    
    var background:Color
    
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
                .frame(height: 0)
                .background(.thickMaterial)
        }
        .background(background)
    }
}

struct TabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TabContainerView(style: .automatic)
    }
}
