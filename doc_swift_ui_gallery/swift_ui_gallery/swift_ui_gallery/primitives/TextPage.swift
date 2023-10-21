import SwiftUI

struct TextPage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                VStack(spacing: 24) {
                    Text("Hello, world!")
                    
                    Text("Hello, world!")
                        .bold()
                    
                    Text("Hello, world!")
                        .italic()
                    
                    Text("Emoji: 💙")
                }
                
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
            }
        }.navigationTitle("Text")
    }
}

struct TextPage_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
