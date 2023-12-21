import SwiftUI

struct TextLocalizationPage: View {
    @State private var localize = false
    
    var body: some View {
        Toggle(isOn: $localize, label: {
            Text("Localize")
        }).padding()
        
        ScrollView {
            VStack(spacing: 24) {
                /* Localizations are stored in "string catalogs" (.xcstrings files) which are bundled with the application at compile time. Once a catalog is created, Xcode can extract all localazible strings at compile time and place them in the catalog.
                 In the following examples, "localization tables" refer to the string catalogs.
                 */
                
                Text("Text initialization from string + localization table specification").font(.title2)
                
                // Text's initializer accepts a LocalizedStringKey, which can be implicitly constructed from a string literal
                // The value of the string is used for the development language localization
                // Values for other languages are looked up in the default table using the string as key, if not found the value is used as is
                Text("pencil")
                
                // The whole key is used as the key in the localization table, even if it contains multiple paragraphs
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam efficitur, enim sit amet sodales rhoncus, nisl nisl varius urna, ut pulvinar odio nibh ac lorem. Etiam sit amet viverra erat, venenatis egestas tellus. Curabitur nec sodales lorem, nec tincidunt velit. Duis sed dolor pretium, viverra magna et, vehicula turpis. Cras suscipit venenatis felis, a dignissim nulla consequat sed. Sed non lacus nec velit vestibulum consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dignissim, ligula id condimentum feugiat, odio mi dapibus risus, quis pulvinar risus elit non ex.\nDonec vitae nisl ornare, efficitur mi vitae, maximus mauris. Curabitur imperdiet commodo tellus, vel pellentesque purus bibendum a. Nunc molestie ut nulla eu accumsan. Proin placerat metus sagittis, elementum augue vel, posuere dui. Aenean viverra enim in leo gravida, vel mollis leo vehicula. Duis aliquet convallis volutpat. Vivamus a nulla velit. Fusce vestibulum libero in cursus feugiat.").font(.system(size: 10))
                
                // Markdown-formatted strings can also be localized
                Text("_Please visit our [website](https://www.example.com)._")
                
                // The comment is shown in the localization table, useful for giving context to translators
                Text("another pencil", comment: "Translator comment")
                
                // This comment will be ignored, since the same key was declared earlier. This is valid even if no comment was specified on the previous key.
                Text("another pencil", comment: "A different comment")
                
                // Specify a different table for this localization, this must be the name of an existing string catalog. If the table is not found, the string will not be localized
                Text("pencil", tableName: "LocalizableAlternative")
                
                // Specify a bundle that contains the localizations table (Bundle.main is the default)
                Text("pencil", bundle: .main)
                
                Divider()
                
                Text("Other initializers").font(.title2)
                
                // Variables are not localized by default
                let someString = "pen"
                Text(someString)
                
                // Make variables localizable by wrapping them in LocalizableStringKey
                Text(LocalizedStringKey(someString))
                
                // Do not localize a string literal
                Text(verbatim: "pencil")
                
                // LocalizedStringResource initializer
                let resource = LocalizedStringResource("pencil")
                Text(resource)
                
                Divider()
                
                // TODO add AttributedString examples
            }
        }.navigationTitle("Localization")
            .environment(\.locale, $localize.wrappedValue ? .init(identifier: "it") : .current)
    }
}

#Preview {
    TextLocalizationPage()
}

#Preview("Italian") {
    TextLocalizationPage().environment(\.locale, .init(identifier: "it"))
}
