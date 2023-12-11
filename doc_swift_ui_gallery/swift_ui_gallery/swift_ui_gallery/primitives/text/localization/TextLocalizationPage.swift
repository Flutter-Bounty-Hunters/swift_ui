//

import SwiftUI

// @maatteogekko: I'm copying these initializers from my previous
// code that were related to localization. Feel free to delete or
// change them as desired. - @suragch
struct TextLocalizationPage: View {
    var someString = "pen"
    var object = LocalizedStringResource("pencil")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // localized if possible
                Text("pencil")
                
                // variables not localized by default
                Text(someString)
                
                // explicitly localize a variable
                Text(LocalizedStringKey(someString))
                
                // from localized string resource
                Text(object)
                
                // explicitly not localized
                Text(verbatim: "pencil")
            }
        }
    }
}

#Preview {
    TextLocalizationPage()
}
