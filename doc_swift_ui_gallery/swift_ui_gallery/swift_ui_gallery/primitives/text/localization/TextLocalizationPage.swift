import SwiftUI

struct TextLocalizationPage: View {
    var someString = "pen"
    var object = LocalizedStringResource("pencil")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Localized if possible
                Text("pencil")
                
                // Variables not localized by default
                Text(someString)
                
                // Explicitly localize a variable
                Text(LocalizedStringKey(someString))
                
                // From localized string resource
                Text(object)
                
                // Explicitly not localized
                Text(verbatim: "pencil")
            }
        }
    }
}

#Preview {
    TextLocalizationPage()
}
