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
        
        case text
        case textField
        case textEditor
        case button
        case image
        case list
        case grid
        case picker
        case segment
        case menu
        case datePicker
        case form
        case spinner
        case slider
        case search
        case alert
        case sheet
        case tabs
        case pager
        
        @ViewBuilder
        var destination:some View{
            switch self{
            case .text: TextView()
            case .textField: TextFieldView()
            case .textEditor: TextEditorView()
            case .button: ButtonView()
            case .image: ImageView()
            case .list: ListView()
            case .grid: GridView()
            case .picker: PickerView(style: .inline)
            case .segment:PickerView(style: .segmented)
            case .menu: PickerView(style: .menu)
            case .datePicker: DatePickerView()
            case .form: FormView()
            case .spinner: SpinnerView()
            case .slider: SliderView()
            case .search: SearchView()
            case .alert: AlertView()
            case .sheet: SheetView()
            case .tabs: TabContainerView(style: .automatic)
            case .pager: TabContainerView(style: .page)
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

