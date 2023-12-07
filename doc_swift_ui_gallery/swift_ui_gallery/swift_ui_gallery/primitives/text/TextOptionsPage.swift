import SwiftUI

struct TextOptionsPage: View {
    var body: some View {
        NavigationStack {
            List() {
                Section() {
                    NavigationLink {
                        TextInitializationPage()
                    } label: {
                        Text("Initialization")
                    }
                    
                    NavigationLink {
                        TextStylePage()
                    } label: {
                        Text("Style")
                    }
                    
                    NavigationLink {
                        TextFittingPage()
                    } label: {
                        Text("Fitting")
                    }
                    
                    TodoLink(label: "Attributed String")
                    
                    TodoLink(label: "Localization")
                    
                    TodoLink(label: "Accessibility")
                } header: {
                    Text("Text")
                }
            }.navigationTitle("Text")
        }
    }
}

struct TextOptions_Previews: PreviewProvider {
    static var previews: some View {
        TextOptionsPage()
    }
}
