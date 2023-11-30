//
//  FormView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 11/30/23.
//

import SwiftUI

struct FormView: View {
    
    @State public var username:String = ""
    @State public var password:String = ""
   
    
    var body: some View {
        Form {
            Section {
                TextField(
                        "Username",
                        text: $username
                    )
                TextField(
                        "Password",
                        text: $password
                    )
            }

            Section {
                Button("Submit") {
                  
                }
            }
        }.navigationTitle("Form View")
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
