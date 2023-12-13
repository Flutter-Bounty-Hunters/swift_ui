import SwiftUI

struct TextTypographyPage: View {
    var attributedString: AttributedString {
        var attributedString = AttributedString("Blue text")
        attributedString.foregroundColor = .blue
        return attributedString
    }
    
    var days = 5;
    var closedRangeDate: ClosedRange<Date> {
        let startDate = Date() // current date and time
        let endDate = Calendar.current.date(byAdding: .day, value: days, to: startDate)!

            return startDate...endDate
    }
    
    var dateInterval: DateInterval {
        let startDate = Date()
        let endDate = Calendar.current.date(byAdding: .day, value: days, to: startDate)!
        return DateInterval(start: startDate, end: endDate)
    }
    
    var date: Date {
        let components = DateComponents(year: 2023, month: 12, day: 7)
        let calendar = Calendar.current
        return calendar.date(from: components)!
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24)  {
                
                // General styling
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
                    
                    // TODO: text scale (requires specifying iOS 17.0+)
                    // Also, what do Scale.default and Scale.secondary even mean?
                    // Text("Hello, world!")
                    //    .textScale(.secondary)
                    
                    // TODO: typesetting language (requires specifying iOS 17.0+)
                    // Text(verbatim: "แอปเปิล").typesettingLanguage(
                    //    .explicit(.init(languageCode: .thai)))
                    
                    Text("Emoji: 💙")
                }
                
                Divider()
                
                // Predefined font styles
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
                
                // System font
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
                
                // Font weight
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
                
                // Font design
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
                
                // Font width
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
                
                // Forground styles
                HStack {
                    Text("Red").foregroundStyle(.red)
                    Text("Green").foregroundStyle(.green)
                    Text("Blue").foregroundStyle(.blue)
                }
                
                Divider()
                
                // Text fitting
                VStack(spacing: 24) {
                    Text("To be, or not to be, that is the question:")
                        .frame(width: 120)
                        .border(.black)
                        .multilineTextAlignment(.leading)
                    
                    Text("To be, or not to be, that is the question:")
                        .frame(width: 120)
                        .border(.black)
                        .multilineTextAlignment(.center)
                    
                    Text("To be, or not to be, that is the question:")
                        .frame(width: 120)
                        .border(.black)
                        .multilineTextAlignment(.trailing)

                    Text("Brevity is the soul of wit.")
                        .frame(width: 120)
                        .border(.black)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Text("Brevity is the soul of wit.")
                        .frame(width: 120)
                        .border(.black)
                        .lineLimit(1)
                        .truncationMode(.middle)
                    
                    Text("Brevity is the soul of wit.")
                        .frame(width: 120)
                        .border(.black)
                        .lineLimit(1)
                        .truncationMode(.head)
                    
                    Text("Brevity is the soul of wit.")
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .frame(width: 120)
                        .border(.black)
                    
                }
                
                Divider()
                
                // General Initializers (excluding localization related ones)
                VStack(spacing: 24) {
                    // Blue text
                    Text(attributedString)
                    
                    // Closed range date
                    Text(closedRangeDate)
                    
                    // Date interval
                    Text(dateInterval)
                    
                    // Styled date
                    Text(date, style: Text.DateStyle.date)
                    
                    // Time since date
                    Text(date, style: Text.DateStyle.offset)
                    
                    // Relative date
                    Text(date, style: Text.DateStyle.relative)
                    
                    // Time componant of date
                    Text(date, style: Text.DateStyle.time)
                    
                    // Timer since date
                    Text(date, style: Text.DateStyle.timer)
                    
                    // Formatted date
                    Text(date, format: Date.FormatStyle(date: .complete, time: .complete))
                    
                    // TODO: using a Formatter
                    // https://developer.apple.com/documentation/swiftui/text/init(_:formatter:)-2he2c
                    
                    // TODO: from Image
                    // https://developer.apple.com/documentation/swiftui/text/init(_:)-60ax7
                    
                    // Countdown
                    Text(timerInterval: closedRangeDate)
                }
            }
        }.navigationTitle("Typography")
    }
}

#Preview {
    TextTypographyPage()
}
