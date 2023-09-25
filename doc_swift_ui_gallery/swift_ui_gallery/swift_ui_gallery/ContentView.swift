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
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                NavigationLink("Tap Me", destination: Text("Second View"))
                
                Text("Hello, world!")
                    .navigationBarTitle("Navigation")
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
