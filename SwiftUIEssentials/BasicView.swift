//
//  BasicView.swift
//  SwiftUIEssentials
//
//  Created by Siam Biswas on 12/1/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .navigationTitle("Text View")
    }
}

struct ButtonView: View {
    var body: some View {
        Button(action: {}) {
            Text("Press here")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.mint)
                .cornerRadius(20)
        }
        .navigationTitle("Button View")
    }
}

struct TextFieldView: View {
    @State private var text = ""

    var body: some View {
        TextField("Enter some text...", text: $text)
            .padding()
            .foregroundColor(.black)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            .shadow(radius: 2)
            .padding(20)
            .navigationTitle("TextField View")
    }
}

struct TextEditorView: View {
    @State private var text = ""

    var body: some View {
        TextEditor(text: $text)
            .padding()
            .foregroundColor(.black)
            .cornerRadius(2)
            .shadow(radius: 1)
            .padding(8)
            .navigationTitle("TextEditor View")
    }
}

struct ImageView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .navigationTitle("Image View")
    }
}
