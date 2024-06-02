import SwiftUI

struct HStackLeadingAlignedPage : View {
    var body: some View {
      HStack(alignment: .top) {
            Text("First\nSecond")
            Text("Third")
            Text("Fourth\nFifth\nSixth")
        }
    }
}

struct HStackCenterAlignedPage : View {
    var body: some View {
      HStack(alignment: .center) {
            Text("First\nSecond")
            Text("Third")
            Text("Fourth\nFifth\nSixth")
        }
    }
}

struct HStackTrailingAlignedPage : View {
    var body: some View {
      HStack(alignment: .bottom) {
            Text("First\nSecond")
            Text("Third")
            Text("Fourth\nFifth\nSixth")
        }
    }
}

struct HStackExceedsAvailableSpacePage : View {
    var body: some View {
        HStack() {
            Rectangle()
                .foregroundColor(Color.red)
                .frame(width: 100, height: .infinity)
            Rectangle()
                .foregroundColor(Color.green)
                .frame(width: 100, height: .infinity)
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: 100, height: .infinity)
            Rectangle()
                .foregroundColor(Color.purple)
                .frame(width: 100, height: .infinity)
            Rectangle()
                .foregroundColor(Color.orange)
                .frame(width: 100, height: .infinity)
            Rectangle()
                .foregroundColor(Color.cyan)
                .frame(width: 100, height: .infinity)
        }
    }
}


struct HStackTopAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
      HStackLeadingAlignedPage()
//      HStackCenterAlignedPage()
//      HStackTrailingAlignedPage()
//      HStackExceedsAvailableSpacePage()
    }
}
