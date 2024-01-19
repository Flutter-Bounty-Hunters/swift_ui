import SwiftUI

struct TextTypographyPage: View {
    @ScaledMetric var scale = 100.0
    
    var attributedString: AttributedString {
        var attributedString = AttributedString("backgroundColor, foregroundColor, baselineOffset, font, kern, tracking, strikethroughStyle, underlineStyle")
        
        var range = attributedString.range(of: "backgroundColor")!
        attributedString[range].backgroundColor = .yellow
        
        range = attributedString.range(of: "foregroundColor")!
        attributedString[range].foregroundColor = .blue
        
        range = attributedString.range(of: "baselineOffset")!
        attributedString[range].baselineOffset = 10
        
        range = attributedString.range(of: "font")!
        attributedString[range].font = UIFont(name: "Chalkduster", size: 18.0)
        
        range = attributedString.range(of: "kern")!
        attributedString[range].kern = 10
        
        range = attributedString.range(of: "tracking")!
        attributedString[range].tracking = -2
        
        range = attributedString.range(of: "strikethroughStyle")!
        attributedString[range].strikethroughStyle = .single
        
        range = attributedString.range(of: "underlineStyle")!
        attributedString[range].underlineStyle = .single

        return attributedString
    }
    
    var overlappingStyles: AttributedString {
        var attributedString = AttributedString("SwiftUI Attributed Strings")
        
        var range = attributedString.range(of: "ftUI Attributed Str")!
        attributedString[range].backgroundColor = .yellow
        
        range = attributedString.range(of: "Strings")!
        attributedString[range].foregroundColor = .red
        
        range = attributedString.range(of: "SwiftUI")!
        attributedString[range].font = UIFont(name: "Chalkduster", size: 24)

        return attributedString
    }
    
    var markdown: AttributedString {
        do {
            let attributedString = try AttributedString(markdown: "**Markdown!** Please visit our [website](https://example.com)")
            return attributedString
        } catch {
            print("Error parsing markdown: \(error)")
            return AttributedString("Error")
        }
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
            VStack(alignment: .leading)  {

                Text("Arial").font(.custom("Arial", size: 30))
                Text("Chalkduster").font(.custom("Chalkduster", size: 30))
                Text("Party LET").font(.custom("Party LET", size: 30))
                Text("Snell Roundhand").font(.custom("Snell Roundhand", size: 30))
                Text("Zapfino").font(.custom("Zapfino", size: 30))
                
                Divider()
                
                Text("size 6").font(.system(size: 6))
                Text("size 7").font(.system(size: 7))
                Text("size 8").font(.system(size: 8))
                Text("size 9").font(.system(size: 9))
                Text("size 10").font(.system(size: 10))
                Text("size 11").font(.system(size: 11))
                Text("size 12").font(.system(size: 12))
                Text("size 13").font(.system(size: 13))
                Text("size 14").font(.system(size: 14))
                Text("size 15").font(.system(size: 15))
                Text("size 16").font(.system(size: 16))
                Text("size 17").font(.system(size: 17))
                Text("size 18").font(.system(size: 18))
                Text("size 19").font(.system(size: 19))
                Text("size 20").font(.system(size: 20))
                Text("size 21").font(.system(size: 21))
                Text("size 22").font(.system(size: 22))
                Text("size 23").font(.system(size: 23))
                Text("size 24").font(.system(size: 24))
                Text("size 25").font(.system(size: 25))
                Text("size 26").font(.system(size: 26))
                Text("size 27").font(.system(size: 27))
                Text("size 28").font(.system(size: 28))
                Text("size 29").font(.system(size: 29))
                Text("size 30").font(.system(size: 30))
                Text("size 31").font(.system(size: 31))
                Text("size 32").font(.system(size: 32))
                Text("size 33").font(.system(size: 33))
                Text("size 34").font(.system(size: 34))
                Text("size 35").font(.system(size: 35))
                Text("size 36").font(.system(size: 36))
                Text("size 37").font(.system(size: 37))
                Text("size 38").font(.system(size: 38))
                Text("size 39").font(.system(size: 39))
                Text("size 40").font(.system(size: 40))
                Text("size 41").font(.system(size: 41))
                Text("size 42").font(.system(size: 42))
                Text("size 43").font(.system(size: 43))
                Text("size 44").font(.system(size: 44))
                Text("size 45").font(.system(size: 45))
                Text("size 46").font(.system(size: 46))
                Text("size 47").font(.system(size: 47))
                Text("size 48").font(.system(size: 48))
                Text("size 49").font(.system(size: 49))
                Text("size 50").font(.system(size: 50))
                Text("size 51").font(.system(size: 51))
                Text("size 52").font(.system(size: 52))
                Text("size 53").font(.system(size: 53))
                Text("size 54").font(.system(size: 54))
                Text("size 56").font(.system(size: 56))
                Text("size 58").font(.system(size: 58))
                Text("size 60").font(.system(size: 60))
                Text("size 62").font(.system(size: 62))
                Text("size 64").font(.system(size: 64))
                Text("size 66").font(.system(size: 66))
                Text("size 68").font(.system(size: 68))
                Text("size 70").font(.system(size: 70))
                Text("size 72").font(.system(size: 72))
                Text("size 76").font(.system(size: 76))
                Text("size 80").font(.system(size: 80))
                Text("size 84").font(.system(size: 84))
                Text("size 88").font(.system(size: 88))
                Text("size 92").font(.system(size: 92))
                Text("size 96").font(.system(size: 96))
                
                Divider()
                
                Text("ultraLight").fontWeight(.ultraLight)
                Text("thin").fontWeight(.thin)
                Text("light").fontWeight(.light)
                Text("regular").fontWeight(.regular)
                Text("medium").fontWeight(.medium)
                Text("semibold").fontWeight(.semibold)
                Text("bold").fontWeight(.bold)
                Text("heavy").fontWeight(.heavy)
                Text("black").fontWeight(.black)
                
                Text("ultraLight").font(.system(size: 30, weight: .ultraLight))
                Text("thin").font(.system(size: 30, weight: .thin))
                Text("light").font(.system(size: 30, weight: .light))
                Text("regular").font(.system(size: 30, weight: .regular))
                Text("medium").font(.system(size: 30, weight: .medium))
                Text("semibold").font(.system(size: 30, weight: .semibold))
                Text("bold").font(.system(size: 30, weight: .bold))
                Text("heavy").font(.system(size: 30, weight: .heavy))
                Text("black").font(.system(size: 30, weight: .black))
                
                Divider()
                
                Text("default").fontDesign(.default)
                Text("rounded").fontDesign(.rounded)
                Text("serif").fontDesign(.serif)
                Text("monospaced").fontDesign(.monospaced)
                
                Text("default").font(.system(size: 30, design: .default))
                Text("rounded").font(.system(size: 30, design: .rounded))
                Text("serif").font(.system(size: 30, design: .serif))
                Text("monospaced").font(.system(size: 30, design: .monospaced))
                
                Divider()
                
                Text("compressed").fontWidth(.compressed)
                Text("condensed").fontWidth(.condensed)
                Text("standard").fontWidth(.standard)
                Text("expanded").fontWidth(.expanded)
                
                Divider()
                
                Text("bold").bold()
                Text("italic").italic()
                Text("monospaced").monospaced()
                Text("monospacedDigit 123").monospacedDigit()
                Text("textCase uppercase").textCase(.uppercase)
                Text("textCase lowercase").textCase(.lowercase)
                
                Divider()
                
                Text("underline").underline()
                VStack(alignment: .leading) {
                    Text("red").underline(color: .red)
                    Text("solid").underline(pattern: .solid)
                    Text("dot").underline(pattern: .dot)
                    Text("dash").underline(pattern: .dash)
                    Text("dashDot").underline(pattern: .dashDot)
                    Text("dashDotDot").underline(pattern: .dashDotDot).padding(.bottom)
                }.padding(.leading, 20)
                
                Text("strikethrough").strikethrough()
                VStack(alignment: .leading) {
                    Text("red").strikethrough(color: .red)
                    Text("solid").strikethrough(pattern: .solid)
                    Text("dot").strikethrough(pattern: .dot)
                    Text("dash").strikethrough(pattern: .dash)
                    Text("dashDot").strikethrough(pattern: .dashDot)
                    Text("dashDotDot").strikethrough(pattern: .dashDotDot)
                }.padding(.leading, 20)
            
                Divider()
                
                Text("black").foregroundStyle(.black)
                Text("blue").foregroundStyle(.blue)
                Text("brown").foregroundStyle(.brown)
                Text("cyan").foregroundStyle(.cyan)
                Text("gray").foregroundStyle(.gray)
                Text("green").foregroundStyle(.green)
                Text("indigo").foregroundStyle(.indigo)
                Text("mint").foregroundStyle(.mint)
                Text("orange").foregroundStyle(.orange)
                Text("pink").foregroundStyle(.pink)
                Text("purple").foregroundStyle(.purple)
                Text("red").foregroundStyle(.red)
                Text("teal").foregroundStyle(.teal)
                Text("white").foregroundStyle(.white)
                Text("clear").foregroundStyle(.clear)
                
                Divider()
                
                Text("linearGradient")
                    .foregroundStyle(.linearGradient(
                        colors: [.red, .blue, .green, .yellow],
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                Text("AngularGradient")
                    .foregroundStyle(AngularGradient(
                        colors: [.red, .blue, .green, .yellow],
                        center: .center
                    ))
                Text("conicGradient")
                    .foregroundStyle(.conicGradient(
                        colors: [.red, .blue, .green, .yellow],
                        center: .center
                    ))
                Text("ellipticalGradient")
                    .foregroundStyle(.ellipticalGradient(
                        colors: [.red, .blue, .green, .yellow]
                    ))
                Text("RadialGradient")
                    .foregroundStyle(RadialGradient(
                        colors: [.red, .blue, .green, .yellow],
                        center: .center,
                        startRadius: 30,
                        endRadius: 100
                    ))
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("ultraThinMaterial").foregroundStyle(.ultraThinMaterial)
                    Text("thinMaterial").foregroundStyle(.thinMaterial)
                    Text("regularMaterial").foregroundStyle(.regularMaterial)
                    Text("thickMaterial").foregroundStyle(.thickMaterial)
                    Text("ultraThickMaterial").foregroundStyle(.ultraThickMaterial)
                }.background(.blue)
                
                Divider()
                
                Text("background color").background(.yellow)
                Text("background gradient").background(.linearGradient(
                    colors: [.red, .blue],
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                
                Divider()
                
                Text("background color\nhello")
                    .padding()
                    .background(.yellow)
                Text("background gradient\nhello").background(.linearGradient(
                    colors: [.red, .blue],
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                Text("background color\nhello")
                    .background(.yellow)
                    .padding()
                Text(attributedString)
                    .background(.green)
                
                Divider()
                
                Text("largeTitle").font(.largeTitle)
                Text("title").font(.title)
                Text("title2").font(.title2)
                Text("title3").font(.title3)
                Text("headline").font(.headline)
                Text("body").font(.body)
                Text("callout").font(.callout)
                Text("subheadline").font(.subheadline)
                Text("footnote").font(.footnote)
                Text("caption").font(.caption)
                Text("caption2").font(.caption2)
                
                Divider()
                
                // Dynamic Type not applied
                Text("body")
                // Dynamic Type applied
                Text("body").font(.body)
                // Dynamic Type not applied
                Text("body").font(.system(size: 10))
                // Dynamic Type applied
                Text("body").font(.custom("arial", size: 30))
                // Dynamic Type overridden
                Text("body").font(.custom("arial", fixedSize: 30))
                // Dynamic Type applied (relative to body)
                Text("body").font(.custom("arial", size: 30, relativeTo: .body))
                // Dynamic Type applied (relative to largeTitle)
                Text("body").font(.custom("arial", size: 30, relativeTo: .largeTitle))
                
                Divider()
                
                Text("ScaledMetric: \(scale)")
                    .font(.system(size: 17))
                    .padding(.leading, scale / 10)
                
                Divider()
                
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.tail)
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.middle)
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.head)
                                
                Divider()
                                
                Text("هذا سطر طويل من النص")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.tail)
                Text("هذا سطر طويل من النص")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.middle)
                Text("هذا سطر طويل من النص")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.head)
                
                Divider()
                                
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .allowsTightening(true)
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .allowsTightening(false)
                
                Divider()
                
                if #available(iOS 17.0, *) {
                    Text("default").textScale(.default)
                    Text("secondary").textScale(.secondary)
                }
                
                Divider()
                
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .minimumScaleFactor(1.0)
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .minimumScaleFactor(0.3)
                Text("Brevity is the soul of wit.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
                
                Divider()
                
                Text("Brevity is the soul of wit.")
                HStack() {
                    Text("lower").baselineOffset(-10)
                    Text("normal")
                    Text("higher").baselineOffset(10)
                }
                
                Divider()
                
                Text("VA")
                Text("kerning").kerning(-3)
                Text("kerning").kerning(-2)
                Text("kerning").kerning(-1)
                Text("kerning").kerning(0)
                Text("kerning").kerning(1)
                Text("kerning").kerning(2)
                Text("kerning").kerning(3)
                
                Divider()
                
                Text("tracking").tracking(-3)
                Text("tracking").tracking(-2)
                Text("tracking").tracking(-1)
                Text("tracking").tracking(0)
                Text("tracking").tracking(1)
                Text("tracking").tracking(2)
                Text("tracking").tracking(3)
                
                Divider()
                
                Text("flight")
                    .font(.custom("Zapfino", size: 20))
                Text("flight")
                    .font(.custom("Zapfino", size: 20))
                    .kerning(20)
                Text("flight")
                    .font(.custom("Zapfino", size: 20))
                    .tracking(20)
                
                Divider()
                
                Text(attributedString)
                Text(overlappingStyles)
                Text(markdown)
                
                Divider()
                
                Text("To be, or not to be, that is the question.")
                    .frame(width: 150)
                    .border(.black)
                    .multilineTextAlignment(.leading)
                Text("To be, or not to be, that is the question.")
                    .frame(width: 150)
                    .border(.black)
                    .multilineTextAlignment(.center)
                Text("To be, or not to be, that is the question.")
                    .frame(width: 150)
                    .border(.black)
                    .multilineTextAlignment(.trailing)
                
                Divider()
                
                Text("هذا سطر طويل من النص")
                    .frame(width: 150)
                    .border(.black)
                    .multilineTextAlignment(.leading)
                Text("هذا سطر طويل من النص")
                    .frame(width: 150)
                    .border(.black)
                    .multilineTextAlignment(.center)
                Text("هذا سطر طويل من النص")
                    .frame(width: 150)
                    .border(.black)
                    .multilineTextAlignment(.trailing)
                
                Divider()
                
                Text("To be, or not to be, that is the question.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(1)
                Text("To be, or not to be, that is the question.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(2)
                Text("To be, or not to be, that is the question.")
                    .frame(width: 150)
                    .border(.black)
                    .lineLimit(nil)
                
                Divider()
                
                Text("To be, or not to be, that is the question.")
                    .frame(width: 200)
                    .border(.black)
                    .lineSpacing(0.0)
                Text("To be, or not to be, that is the question.")
                    .frame(width: 200)
                    .border(.black)
                    .lineSpacing(10.0)
                
                // Date time initializers
                // TODO: These are not really related to typography. Can we move them somewhere else?
                VStack(spacing: 24) {
                    
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
                    
                    // Time component of date
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
            .padding(.leading, 60)
                .padding(.top, 20)
                .font(.system(size: 30))
        }.navigationTitle("Typography")
    }
}

#Preview {
    TextTypographyPage()
}
