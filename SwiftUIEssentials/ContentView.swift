//
//  ContentView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/29/23.
//

import SwiftUI

struct ContentView: View {
    
    enum Types:String, CaseIterable, Identifiable{
        
        var id: String { rawValue }
        
        case list
        case grid
        case picker
        case datePicker
        case form
        case spinner
        case slider
        case search
        case alert
        
        @ViewBuilder
        var destination:some View{
            switch self{
            case .list: ListView()
            case .grid: GridView()
            case .picker: PickerView()
            case .datePicker: DatePickerView()
            case .form: FormView()
            case .spinner: SpinnerView()
            case .slider: SliderView()
            case .search: SearchView()
            case .alert: AlertView()
            }
        }
    }
    
    var body: some View {
        NavigationView {
                List(Types.allCases) { item in
                    NavigationLink(destination: item.destination) {
                      Text(item.rawValue.uppercased())
                    }
                }
                .navigationTitle("SwiftUI Essentials")
                .navigationBarTitleDisplayMode(.inline)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

