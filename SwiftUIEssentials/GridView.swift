//
//  GridView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct GridView: View {
    
    struct ColorView: View {
        let color: Color
        
        var body: some View {
            color
                .frame(width: 50, height: 50)
        }
    }
    
    enum GridColumns:String,CaseIterable,Identifiable{
        
        var id:String{
            return rawValue
        }
        
        case pink,yellow,mint,red,blue,green,gray,black
        
        var color:Color{
            switch self{
            case .pink: return .pink
            case .yellow: return .yellow
            case .mint: return .mint
            case .red: return .red
            case .blue: return.blue
            case .green: return .green
            case .gray: return .gray
            case .black: return .black
            }
        }
    }
    
    var body: some View {
            Grid {
                ForEach(GridColumns.allCases){ item in
                    GridRow {
                        ForEach(0..<Int.random(in: 2..<7), id: \.self) { _ in
                            ColorView(color: item.color)
                        }
                    }
                }
            }
            .navigationTitle("Grid View")
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
