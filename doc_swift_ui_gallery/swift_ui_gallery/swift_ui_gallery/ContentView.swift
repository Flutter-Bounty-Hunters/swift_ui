import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PrimitivesPage().tabItem{
                Label("Primitives", systemImage: "square.fill.on.circle.fill")
            }
            
            LayoutsPage().tabItem{
                Label("Layouts", systemImage: "square.3.layers.3d")
            }
            
            CollectionsPage().tabItem{
                Label("Collections", systemImage: "tablecells")
            }
            
            ScaffoldsPage().tabItem{
                Label("Scaffolds", systemImage: "square.leftthird.inset.filled")
            }
            
            ControlsPage().tabItem{
                Label("Controls", systemImage: "slider.horizontal.3")
            }
            
            MotionPage().tabItem{
                Label("Motion", systemImage: "move.3d")
            }
            
            ShapesPage().tabItem{
                Label("Shapes", systemImage: "square.on.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
