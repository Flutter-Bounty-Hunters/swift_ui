import SwiftUI

struct TextAccessibilityPage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Divider()
                Text("To test the app with VoiceOver, open Settings, Accessibility, VoiceOver.")

                Divider()

                Text("Text with accessibility label").accessibilityLabel("If the text has an accessibility label, only the accessibility label is spoken by VoiceOver, the text itself is skipped.")

                Divider()

                Text("Lowered pitch").speechAdjustedPitch(-1.0)
                Text("Slightly lowered pitch").speechAdjustedPitch(-0.3)
                Text("Normal pitch").speechAdjustedPitch(0)
                Text("Slightly raised pitch").speechAdjustedPitch(0.3)
                Text("Raised pitch").speechAdjustedPitch(1.0)

                Divider()

                // By default, VoiceOver voices punctuation based on surrounding context.
                Text("Default punctuation: All the world's a stage, And all the men and women merely players;")
                Text("Includes punctuation: All the world's a stage, And all the men and women merely players;").speechAlwaysIncludesPunctuation(true)
                Text("Does not include punctuation: All the world's a stage, And all the men and women merely players;").speechAlwaysIncludesPunctuation(false)

                Text("void main(List<String> arguments) { print('Default punctuation'); }")
                Text("void main(List<String> arguments) { print('Include punctuation'); }").speechAlwaysIncludesPunctuation(true)
                Text("void main(List<String> arguments) { print('Do not include punctuation'); }").speechAlwaysIncludesPunctuation(false)

                Divider()

                Text("Default Spell out characters")
                Text("APPL")
                Text("125")
                Text("Spell out characters")
                Text("APPL").speechSpellsOutCharacters(true)
                Text("125").speechSpellsOutCharacters(true)
                Text("Do not spell out characters")
                Text("APPL").speechSpellsOutCharacters(false)
                Text("125").speechSpellsOutCharacters(false)

                Divider()

                Text("Heading h1").accessibilityHeading(.h1).accessibilityAddTraits([.isHeader])
                Text("Heading h2").accessibilityHeading(.h2).accessibilityAddTraits([.isHeader])
                Text("Heading h3").accessibilityHeading(.h3).accessibilityAddTraits([.isHeader])
                Text("Heading h4").accessibilityHeading(.h4).accessibilityAddTraits([.isHeader])
                Text("Heading h5").accessibilityHeading(.h5).accessibilityAddTraits([.isHeader])
                Text("Heading h6").accessibilityHeading(.h6).accessibilityAddTraits([.isHeader])
                Text("Heading unspecified").accessibilityHeading(.unspecified)

                Divider()

                // TODO: I couldn't figure out how to jump to the next heading of the same level...
                // e.g. I want to jump from Apples to Pears with one gesture.
                Text("Access Rotor by two-finger rotation. Select Headings in the Rotor.  Jump directly to the next or previous heading with swipe down and swipe up, respectively.")

                Text("Fruits (h1)").accessibilityHeading(.h1).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("Apples (h2)").accessibilityHeading(.h2).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("Golden Delicious (h3)").accessibilityHeading(.h3).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("Honeycrisp (h3)").accessibilityHeading(.h3).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("McIntosh (h3)").accessibilityHeading(.h3).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("Pears (h2)").accessibilityHeading(.h2).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("Concorde (h3)").accessibilityHeading(.h3).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("Green Anjou (h3)").accessibilityHeading(.h3).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")
                Text("Red Bartlett (h3)").accessibilityHeading(.h3).accessibilityAddTraits([.isHeader])
                Text("Etiam viverra eleifend elit ullamcorper aliquet. Nam sollicitudin lectus nisl, finibus volutpat augue posuere quis.")

                Divider()

                // This doesn't seem to be doing anything, but it might be a Swift UI bug?
                // https://swiftui-lab.com/bug-watch/
                // > speechAnnouncementsQueued() does nothing - FB9313957
                // Asked for help on StackOverflow:
                // https://stackoverflow.com/q/77773505
                Text("Speech announcement is queued").speechAnnouncementsQueued(true)
                Text("Speech announcement is not queued").speechAnnouncementsQueued(false)

                Divider()

                // TODO: I didn't hear anything changed with the different text content types.
                // Found nothing on Google, asked on Twitter...
                // https://twitter.com/vincevargadev/status/1743302073259532324
                // Then asked for help on StackOverflow:
                // https://stackoverflow.com/q/77773708
                Text("console text content type").accessibilityTextContentType(.console)
                Text("file system text content type").accessibilityTextContentType(.fileSystem)
                Text("/home/user/documents/photos/2024/vacation/destination/").accessibilityTextContentType(.fileSystem)
                Text("/home/user/documents/photos/2024/vacation/destination/").accessibilityTextContentType(.messaging)
                Text("messaging text content type").accessibilityTextContentType(.messaging)
                Text("narrative text content type").accessibilityTextContentType(.narrative)
                Text("plain text content type").accessibilityTextContentType(.plain)
                Text("source code content type").accessibilityTextContentType(.sourceCode)
                Text("word processing text content type").accessibilityTextContentType(.wordProcessing)

                Divider()
            }.padding(.horizontal, 12)
        }.navigationTitle("Accessibility")
    }
}

#Preview {
    TextAccessibilityPage()
}
