//

import SwiftUI

struct TextAccessibilityPage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text("Hello world")
            }
        }.navigationTitle("Accessibility")
    }
}

#Preview {
    TextAccessibilityPage()
}
