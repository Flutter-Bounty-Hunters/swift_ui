import SwiftUI

struct ImageLocalizationPage: View {
    @State private var localize: Bool

    init(localize: Bool = false) {
        _localize = State(initialValue: localize)
    }
    
    var body: some View {
        Toggle(isOn: $localize, label: {
            Text("Localize")
        }).padding()
        
        ScrollView {
            VStack(spacing: 24) {
                Image("Dash_hello")
                    .resizable()
                    .scaledToFit()
                
                // If there is no image specified for the current locale, the default one is used, if provided.
                Image("Dash_hello")
                    .resizable()
                    .scaledToFit()
                    .environment(\.locale, .init(identifier: "ja"))
            }
        }.navigationTitle("Localization")
            .environment(\.locale, $localize.wrappedValue ? .init(identifier: "it") : .current)
    }
}

#Preview {
    ImageLocalizationPage()
}

#Preview("Italian") {
    ImageLocalizationPage(localize: true)
}
