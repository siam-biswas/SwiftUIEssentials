//
//  SearchView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct SearchView: View {
    
    let names = ["Holly", "Josh", "Rhonda", "Ted","Zen","Apple","Banana","Cup"]
    @State private var searchText = ""
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
    
    var body: some View {
        List {
            ForEach(searchResults, id: \.self) { name in
                Text(name)
            }
        }
        .listStyle(.plain)
        .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always)) {
            ForEach(searchResults, id: \.self) { result in
                Text("\(result)").searchCompletion(result)
            }
        }
        .navigationTitle("Search View")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
