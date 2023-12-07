//

import SwiftUI

struct TextInitializationPage: View {
    var someString = "pen"
    var object = LocalizedStringResource("pencil")
    
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
                
                // blue text
                Text(attributedString)
                
                // closed range date
                Text(closedRangeDate)
                
                // date interval
                Text(dateInterval)
                
                // styled date
                Text(date, style: Text.DateStyle.date)
                
                // time since date
                Text(date, style: Text.DateStyle.offset)
                
                // relative date
                Text(date, style: Text.DateStyle.relative)
                
                // time componant of date
                Text(date, style: Text.DateStyle.time)
                
                // timer since date
                Text(date, style: Text.DateStyle.timer)
                
                // formatted date
                Text(date, format: Date.FormatStyle(date: .complete, time: .complete))
                
                // TODO: using a Formatter
                // https://developer.apple.com/documentation/swiftui/text/init(_:formatter:)-2he2c
                
                // TODO: from Image
                // https://developer.apple.com/documentation/swiftui/text/init(_:)-60ax7
                
                // countdown
                Text(timerInterval: closedRangeDate)
            }
        }.navigationTitle("Text Initialization")
    }
}

#Preview {
    TextInitializationPage()
}
