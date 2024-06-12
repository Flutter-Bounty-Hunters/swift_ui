import SwiftUI

struct ShapesPage: View {
    var body: some View {
        NavigationStack {
            List() {
                NavigationLink {
                    RectanglePage()
                } label: {
                    Text("Rectangle")
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
