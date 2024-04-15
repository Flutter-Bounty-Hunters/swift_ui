import SwiftUI

struct VStackTopAlignedPage : View {
    var body: some View {
        NavigationStack {
            VStack() {
                Text("First")
                Text("Second")
                Text("Third")
                Spacer()
            }
        }.navigationTitle("Top Aligned")
    }
}

struct VStackTopAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackTopAlignedPage()
    }
}

struct VStackMiddleAlignedPage : View {
    var body: some View {
        NavigationStack {
            VStack() {
                Text("First")
                Text("Second")
                Text("Third")
            }
        }.navigationTitle("Middle Aligned")
    }
}

struct VStackMiddleAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackMiddleAlignedPage()
    }
}

struct VStackBottomAlignedPage : View {
    var body: some View {
        NavigationStack {
            VStack() {
                Spacer()
                Text("First")
                Text("Second")
                Text("Third")
            }
        }.navigationTitle("Bottom Aligned")
    }
}

struct VStackBottomAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackBottomAlignedPage()
    }
}

struct VStackContentLeftAlignedPage: View {
    var body: some View {
        NavigationStack {
            VStack(alignment:.leading) {
                Text("First")
                Text("Second")
                Text("Third")
            }
        }.navigationTitle("Content Left Aligned")
    }
}

struct VStackContentLeftAlignmentPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentLeftAlignedPage()
    }
}

struct VStackContentCenterAlignedPage: View {
    var body: some View {
        NavigationStack {
            VStack(alignment:.center) {
                Text("First")
                Text("Second")
                Text("Third")
            }
        }.navigationTitle("Content Center Aligned")
    }
}

struct VStackContentCenterAlignmentPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentCenterAlignedPage()
    }
}

struct VStackContentRightAlignedPage: View {
    var body: some View {
        NavigationStack {
            VStack(alignment:.trailing) {
                Text("First")
                Text("Second")
                Text("Third")
            }
        }.navigationTitle("Content Right Aligned")
    }
}

struct VStackContentRightAlignmentPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentRightAlignedPage()
    }
}

struct VStackContentSpacingPage: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing:100) {
                Text("First")
                Text("Second")
                Text("Third")
            }
        }.navigationTitle("Content Spacing")
    }
}

struct VStackContentSpacingPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentSpacingPage()
    }
}

struct VStackExceedsAvailableSpacePage : View {
    var body: some View {
        NavigationStack {
            VStack() {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.purple)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.cyan)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(height: 200)
            }
        }.navigationTitle("VStack Exceeds Space")
    }
}

struct VStackExceedsAvailableSpacePage_Previews: PreviewProvider {
    static var previews: some View {
        VStackExceedsAvailableSpacePage()
    }
}

struct LazyVStackExceedsAvailableSpacePage: View {
    var body: some View {
        NavigationStack {
            LazyVStack() {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.purple)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.cyan)
                    .frame(height: 200)
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(height: 200)
            }
        }.navigationTitle("LazyVStack Exceeds Space")
    }
}

struct LazyVStackExceedsAvailableSpacePage_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackExceedsAvailableSpacePage()
    }
}
