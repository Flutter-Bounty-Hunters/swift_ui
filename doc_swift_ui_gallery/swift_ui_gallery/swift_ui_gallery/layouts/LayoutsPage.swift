import SwiftUI

struct LayoutsPage: View {
    var body: some View {
        NavigationStack {
            List {
                Section() {
                    NavigationLink {
                        VStackTopAlignedPage()
                    } label: {
                        Text("Top Aligned")
                    }
                    
                    NavigationLink {
                        VStackMiddleAlignedPage()
                    } label: {
                        Text("Middle Aligned")
                    }
                    
                    NavigationLink {
                        VStackBottomAlignedPage()
                    } label: {
                        Text("Bottom Aligned")
                    }
                    
                    NavigationLink{
                        VStackContentAlignment()
                    } label: {
                        Text("Content Alignment")
                    }
                    
                    NavigationLink{
                        VStackContentSpacing()
                    } label: {
                        Text("Content Spacing")
                    }
                    
                    NavigationLink {
                        VStackExceedsAvailableSpaceAlignedPage()
                    } label: {
                        Text("Exceeds available space")
                    }
                } header: {
                    Text("VStack")
                }
                
                Section() {
                    TodoLink(label: "Left Aligned")
                    
                    TodoLink(label: "Center Aligned")
                    
                    TodoLink(label: "Right Aligned")
                    
                    TodoLink(label: "Exceeds available space")
                } header: {
                    Text("HStack")
                }
                
                Section() {
                    TodoLink(label: "Example")
                } header: {
                    Text("ZStack")
                }
                
                Section() {
                    TodoLink(label: "Fits available space")
                    
                    TodoLink(label: "Exceeds available space")
                } header: {
                    Text("Grid")
                }
            }.navigationTitle("Layouts")
        }
    }
}

struct LayoutsPage_Previews: PreviewProvider {
    static var previews: some View {
        LayoutsPage()
    }
}
