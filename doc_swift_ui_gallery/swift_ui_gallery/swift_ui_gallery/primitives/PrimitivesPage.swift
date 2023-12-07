import SwiftUI

struct PrimitivesPage: View {
    var body: some View {
        NavigationStack {
            List() {
                Section() {
                    NavigationLink {
                        TextOptionsPage()
                    } label: {
                        Text("All styles")
                    }
                } header: {
                    Text("Text")
                }
                
                Section() {
                    TodoLink(label: "Natural size")
                    
                    TodoLink(label: "Shrunk Smaller")
                    
                    TodoLink(label: "Expanded Larger")
                    
                    TodoLink(label: "Shape Clipped")
                    
                    TodoLink(label: "From Network")
                } header: {
                    Text("Image")
                }
                
                Section() {
                    TodoLink(label: "Static Size")
                } header: {
                    Text("Frame")
                }
            }.navigationTitle("UI Primitives")
        }
    }
}

struct Primitives_Previews: PreviewProvider {
    static var previews: some View {
        PrimitivesPage()
    }
}
