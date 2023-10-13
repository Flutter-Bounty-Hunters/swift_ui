//
//  ContentView.swift
//  swift_ui_gallery
//
//  Created by Matt Carroll on 9/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .navigationBarTitle("Navigation 0")
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .navigationTitle("Navigation 1")
                
                NavigationLink("Tap Me", destination: Text("Second View"))
                
                Text("Hello, world!")
                    .navigationBarTitle("Navigation 1")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
