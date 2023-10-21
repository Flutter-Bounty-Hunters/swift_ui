import SwiftUI

struct ScaffoldsPage: View {
    var body: some View {
        NavigationStack {
            List() {
                TodoLink(label: "NavigationStack")
            }.navigationTitle("Scaffolds")
        }
    }
}

struct ScaffoldsPage_Previews: PreviewProvider {
    static var previews: some View {
        ScaffoldsPage()
    }
}
