import SwiftUI

struct ControlsPage: View {
    var body: some View {
        NavigationStack {
            List() {
                TodoLink(label: "Buttons")
                
                TodoLink(label: "Switches")
            }.navigationTitle("Controls")
        }
    }
}

struct ControlsPage_Previews: PreviewProvider {
    static var previews: some View {
        ControlsPage()
    }
}
