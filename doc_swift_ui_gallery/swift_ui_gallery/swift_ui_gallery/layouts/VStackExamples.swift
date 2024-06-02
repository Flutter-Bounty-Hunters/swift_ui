import SwiftUI

struct VStackLeadingAlignedPage : View {
    var body: some View {
      VStack(alignment: .leading) {
            Text("First")
            Text("Second")
            Text("Third")
        }
    }
}

struct VStackCenterAlignedPage : View {
    var body: some View {
      VStack(alignment: .center) {
            Text("First")
            Text("Second")
            Text("Third")
        }
    }
}

struct VStackTrailingAlignedPage : View {
    var body: some View {
      VStack(alignment: .trailing) {
            Text("First")
            Text("Second")
            Text("Third")
        }
    }
}

struct VStackExceedsAvailableSpacePage : View {
    var body: some View {
        VStack() {
            Rectangle()
                .foregroundColor(Color.red)
                .frame(width: .infinity, height: 200)
            Rectangle()
                .foregroundColor(Color.green)
                .frame(width: .infinity, height: 200)
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: .infinity, height: 200)
            Rectangle()
                .foregroundColor(Color.purple)
                .frame(width: .infinity, height: 200)
            Rectangle()
                .foregroundColor(Color.orange)
                .frame(width: .infinity, height: 200)
            Rectangle()
                .foregroundColor(Color.cyan)
                .frame(width: .infinity, height: 200)
        }
    }
}


struct VStackTopAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
//      VStackLeadingAlignedPage()
//      VStackCenterAlignedPage()
//      VStackTrailingAlignedPage()
      VStackExceedsAvailableSpacePage()
    }
}
