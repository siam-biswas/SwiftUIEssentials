//
//  SpinnerView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct SpinnerView: View {
    var body: some View {
        ProgressView()
            .navigationTitle("Spinner View")
    }
}

struct SpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        SpinnerView()
    }
}
