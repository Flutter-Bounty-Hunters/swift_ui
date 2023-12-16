import SwiftUI

struct TextLocalizationPage: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Text's initializer accepts a LocalizedStringKey, which can be implicitly constructed from a string literal
                // The value of the string is used for the development language localization
                // Values for other languages are looked up in the default table using the string as key, if not found the value is used as is
                Text("pencil")
                
                // The comment is shown in the localization table, useful for giving context to translators
                Text("another pencil", comment: "Translator comment")
                
                // This comment will be ignored, since the same key was declared earlier. This is valid even if no comment was specified on the previous key.
                Text("another pencil", comment: "A different comment")
                
                // Specify a different table for this localization
                Text("pencil", tableName: "LocalizableAlternative")
                
                // Specify a bundle that contains the localizations table (Bundle.main is the default)
                Text("pencil", bundle: .main)
                
                Divider()
                
                // Variables are not localized by default
                let someString = "pen"
                Text(someString)
                
                // Make variables localizable by wrapping them in LocalizableStringKey
                Text(LocalizedStringKey(someString))
                
                // Do not localize a string literal
                Text(verbatim: "pencil")
                
                Divider()
                
                // LocalizedStringResource initializer
                let resource = LocalizedStringResource("pencil")
                Text(resource)
                
                Divider()
                
                // Markdown-formatted strings can also be localized
                Text("_Please visit our [website](https://www.example.com)._")
            }
        }
    }
}

#Preview {
    TextLocalizationPage()
}

#Preview("Italian") {
    TextLocalizationPage().environment(\.locale, .init(identifier: "it"))
}
