import SwiftUI

struct HStackLeftAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack() {
                Text("First")
                Text("Second")
                Text("Third")
                Spacer()
            }
        }.navigationTitle("Left Aligned")
    }
}

struct HStackCenterAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack() {
                Text("First")
                Text("Second")
                Text("Third")
            }
        }.navigationTitle("Center Aligned")
    }
}


struct HStackRightAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack() {
                Spacer()
                Text("First")
                Text("Second")
                Text("Third")
            }.navigationTitle("Right Aligned")
        }
    }
}

struct HStackContentTopAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack(alignment:.top) {
                Text("First").font(.largeTitle)
                Text("Second").font(.title)
                Text("Third").font(.title2)
            }.border(Color.blue, width: 1)
        }.navigationTitle("Content Top Aligned")
    }
}

struct HStackContentCenterAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack(alignment:.center) {
                Text("First").font(.largeTitle)
                Text("Second").font(.title)
                Text("Third").font(.title2)
            }.border(Color.blue, width: 1)
        }.navigationTitle("Content Center Aligned")
    }
}

struct HStackContentBottomAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack(alignment:.bottom) {
                Text("First").font(.largeTitle)
                Text("Second").font(.title)
                Text("Third").font(.title2)
            }.border(Color.blue, width: 1)
        }.navigationTitle("Content Bottom Aligned")
    }
}

struct HStackContentFirstTextBaselineAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack(alignment:.firstTextBaseline) {
                Text("First").font(.largeTitle)
                Text("Second").font(.title)
                Text("Third").font(.title2)
            }.border(Color.blue, width: 1)
        }.navigationTitle("Content First Text Baseline Aligned")
    }
}


struct HStackContentLastTextBaselineAlignedPage : View {
    var body: some View {
        NavigationStack {
            HStack(alignment:.lastTextBaseline) {
                Text("First").font(.largeTitle)
                Text("Second").font(.title)
                Text("Third").font(.title2)
            }.border(Color.blue, width: 1)
        }.navigationTitle("Content Last Text Baseline Aligned")
    }
}

struct HStackExceedsAvailableSpacePage : View {
    var body: some View {
        NavigationStack {
            HStack() {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.purple)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.cyan)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 100)
            }
        }.navigationTitle("HStack Exceeds Space")
    }
}


struct LazyHStackExceedsAvailableSpacePage : View {
    var body: some View {
        NavigationStack {
            LazyHStack() {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.purple)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.cyan)
                    .frame(width: 100)
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 100)
            }
        }.navigationTitle("Lazy HStack Exceeds Space")
    }
}



struct HStackLeftAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackLeftAlignedPage()
    }
}

struct HStackCenterAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackCenterAlignedPage()
    }
}

struct HStackRightAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackRightAlignedPage()
    }
}

struct HStackContentTopAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentTopAlignedPage()
    }
}

struct HStackContentCenterAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentCenterAlignedPage()
    }
}

struct HStackContentBottomAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentBottomAlignedPage()
    }
}


struct HStackContentFirstTextBaselineAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentFirstTextBaselineAlignedPage()
    }
}


struct HStackContentLastTextBaselineAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentLastTextBaselineAlignedPage()
    }
}

struct HStackExceedsAvailableSpacePage_Previews: PreviewProvider {
    static var previews: some View {
        HStackExceedsAvailableSpacePage()
    }
}

struct LazyHStackExceedsAvailableSpacePage_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackExceedsAvailableSpacePage()
    }
}

