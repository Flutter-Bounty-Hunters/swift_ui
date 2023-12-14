import SwiftUI

struct TextPage: View {
    var body: some View {
        NavigationStack {
            List() {
                Section() {
                    NavigationLink {
                        TextTypographyPage()
                    } label: {
                        Text("Typography")
                    }
                    
                    NavigationLink {
                        TextLocalizationPage()
                    } label: {
                        Text("Localization")
                    }
                    
                    NavigationLink {
                        TextAccessibilityPage()
                    } label: {
                        Text("Accessibility")
                    }
                    
                } header: {
                    Text("UX divisions")
                }
            }.navigationTitle("Text")
        }
    }
}

struct TextOptions_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
