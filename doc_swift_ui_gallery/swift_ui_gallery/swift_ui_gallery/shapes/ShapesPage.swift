import SwiftUI

struct ShapesPage: View {
    var body: some View {
        NavigationStack {
            List() {
                Section() {
                    NavigationLink {
                        RectanglePage()
                    } label: {
                        Text("Rectangle")
                    }
                    
                    NavigationLink {
                        EllipsePage()
                    } label: {
                        Text("Ellipse")
                    }
                    
                } header: {
                    Text("Shapes")
                }
                
                Section() {
                    NavigationLink {
                        ShadowPage()
                    } label: {
                        Text("shadow")
                    }
                } header: {
                    Text("View methods")
                }
                
                
            }.navigationTitle("Shapes")
        }
    }
}

struct ShapesPage_Previews: PreviewProvider {
    static var previews: some View {
        ShapesPage()
    }
}
