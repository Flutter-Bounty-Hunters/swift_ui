import SwiftUI

struct CollectionsPage: View {
    var body: some View {
        NavigationStack {
            List() {
                Section() {
                    TodoLink(label: "No Sections")
                    
                    TodoLink(label: "With Sections (plain)")
                    
                    TodoLink(label: "With Sections (grouped)")
                    
                    TodoLink(label: "Empty")
                } header: {
                    Text("Lists")
                }
                
                Section() {
                    TodoLink(label: "Static Rows")
                    
                    TodoLink(label: "Sortable")
                    
                    TodoLink(label: "Empty")
                } header: {
                    Text("Tables")
                }
            }.navigationTitle("Collections")
        }
    }
}

struct CollectionsPage_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsPage()
    }
}
