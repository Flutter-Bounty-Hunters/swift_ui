import SwiftUI

struct TextStylePage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                VStack(spacing: 24) {
                    Text("Hello, world!")
                    
                    Text("Hello, world!")
                        .bold()
                    
                    Text("Hello, world!")
                        .italic()
                    
                    Text("Hello, world!")
                        .background(.yellow)
                    
                    Text("Hello, world!")
                        .strikethrough()
                    
                    Text("Hello, world!")
                        .underline()
                    
                    Text("Hello, world!")
                        .underline(pattern: .dot)
                    
                    Text("Hello, world!")
                        .underline(pattern: .dash)
                    
                    Text("Hello, world!")
                        .underline(pattern: .dashDot)
                    
                    Text("Hello, world!")
                        .underline(pattern: .dashDotDot)
                    
                    Text("Hello, world!")
                        .monospaced()
                    
                    Text("Hello, 12345!")
                        .monospacedDigit()
                    
                    Text("Hello, world!")
                        .kerning(-3)
                    
                    Text("Hello, world!")
                        .kerning(3)
                    
                    Text("Hello, world!")
                        .tracking(-3)
                    
                    Text("Hello, world!")
                        .tracking(3)
                    
                    HStack(alignment: .top) {
                        Text("Hello")
                            .baselineOffset(-10)
                            .border(Color.red)
                        Text("Hello")
                            .border(Color.green)
                        Text("Hello")
                            .baselineOffset(10)
                            .border(Color.blue)
                    }
                    
                    Text("Hello, world!")
                        .textCase(.lowercase)
                    
                    Text("Hello, world!")
                        .textCase(.uppercase)
                    
                    // TODO: text scale
                    // Text("Hello, world!")
                    //    .textScale(.secondary)
                    
                    // TODO: typesetting language
                    // Text(verbatim: "แอปเปิล").typesettingLanguage(
                    //    .explicit(.init(languageCode: .thai)))

                    
                    Text("Emoji: 💙")
                }
                
                Divider()
                
                // predefined styles
                VStack(spacing: 24) {
                    Text("Large Title")
                        .font(.largeTitle)
                    
                    Text("Title")
                        .font(.title)
                    
                    Text("Title 2")
                        .font(.title2)
                    
                    Text("Title 3")
                        .font(.title3)
                    
                    Text("Headline")
                        .font(.headline)
                    
                    Text("Subheadline")
                        .font(.subheadline)
                    
                    Text("Callout")
                        .font(.callout)
                    
                    Text("Footnote")
                        .font(.footnote)
                }
                
                Divider()
                
                // system font
                VStack(spacing: 24) {
                    Text("System font - 18, light, serif")
                        .font(.system(size: 18, weight: .light, design: .serif))
                    
                    Text("System font - 18, medium, serif")
                        .font(.system(size: 18, weight: .medium, design: .serif))
                    
                    Text("System font - 18, black, serif")
                        .font(.system(size: 18, weight: .black, design: .serif))
                    
                    Text("System font - 18, light, rounded")
                        .font(.system(size: 18, weight: .light, design: .rounded))
                    
                    Text("System font - 18, medium, rounded")
                        .font(.system(size: 18, weight: .medium, design: .rounded))
                    
                    Text("System font - 18, black, rounded")
                        .font(.system(size: 18, weight: .black, design: .rounded))
                    
                    Text("System font - 18, light, monospace")
                        .font(.system(size: 18, weight: .light, design: .monospaced))
                    
                    Text("System font - 18, medium, monospace")
                        .font(.system(size: 18, weight: .medium, design: .monospaced))
                    
                    Text("System font - 18, black, monospace")
                        .font(.system(size: 18, weight: .black, design: .monospaced))
                }
                
                Divider()
                
                // font weight
                VStack(spacing: 24) {
                    Text("fontWeight: regular")
                        .fontWeight(.regular)
                    
                    Text("fontWeight: medium")
                        .fontWeight(.medium)
                    
                    Text("fontWeight: semibold")
                        .fontWeight(.semibold)
                    
                    Text("fontWeight: bold")
                        .fontWeight(.bold)
                    
                    Text("fontWeight: heavy")
                        .fontWeight(.heavy)
                    
                    Text("fontWeight: black")
                        .fontWeight(.black)
                    
                    Text("fontWeight: light")
                        .fontWeight(.light)
                    
                    Text("fontWeight: ultraLight")
                        .fontWeight(.ultraLight)
                }
                
                Divider()
                
                // font design
                VStack(spacing: 24) {
                    Text("fontDesign: default")
                        .fontDesign(.default)
                    
                    Text("fontDesign: monospaced")
                        .fontDesign(.monospaced)
                    
                    Text("fontDesign: rounded")
                        .fontDesign(.rounded)
                    
                    Text("fontDesign: serif")
                        .fontDesign(.serif)
                }
                
                Divider()
                
                // font width
                VStack(spacing: 24) {
                    Text("fontWidth: compressed")
                        .fontWidth(.compressed)
                    
                    Text("fontWidth: condensed")
                        .fontWidth(.condensed)
                    
                    Text("fontWidth: expanded")
                        .fontWidth(.expanded)
                    
                    Text("fontWidth: standard")
                        .fontWidth(.standard)
                }
                
                Divider()
                
                HStack {
                    Text("Red").foregroundStyle(.red)
                    Text("Green").foregroundStyle(.green)
                    Text("Blue").foregroundStyle(.blue)
                }

            }
        }.navigationTitle("Text Style")
    }
}

struct TextStylePage_Previews: PreviewProvider {
    static var previews: some View {
        TextStylePage()
    }
}
