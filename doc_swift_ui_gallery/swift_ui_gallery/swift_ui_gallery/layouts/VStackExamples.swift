import SwiftUI

struct VStackTopAlignedPage : View {
    var body: some View {
        NavigationStack {
            VStack() {
                Text("First")
                Divider()
                Text("Second")
                Divider()
                Text("Third")
                Spacer()
            }
        }.navigationTitle("Top Aligned")
    }
}

struct VStackMiddleAlignedPage : View {
    var body: some View {
        NavigationStack {
            VStack() {
                Spacer()
                Text("First")
                Divider()
                Text("Second")
                Divider()
                Text("Third")
                Spacer()
            }
        }.navigationTitle("Middle Aligned")
    }
}

struct VStackBottomAlignedPage : View {
    var body: some View {
        NavigationStack {
            VStack() {
                Spacer()
                Text("First")
                Divider()
                Text("Second")
                Divider()
                Text("Third")
            }
        }.navigationTitle("Bottom Aligned")
    }
}

struct VStackContentAlignmentPage: View {
    var body: some View {
        NavigationStack {
            List() {
                Section {
                    VStack(alignment:.leading) {
                        Text("First")
                        Divider()
                        Text("Second")
                        Divider()
                        Text("Third")
                    }
                } header: {
                    Text("Content Left Aligned")
                }
                Section {
                    VStack(alignment:.center) {
                        Text("First")
                        Divider()
                        Text("Second")
                        Divider()
                        Text("Third")
                    }
                } header: {
                    Text("Content Center Aligned")
                }
                Section {
                    VStack(alignment:.trailing) {
                        Text("First")
                        Divider()
                        Text("Second")
                        Divider()
                        Text("Third")
                    }
                } header: {
                    Text("Content Right Aligned")
                }
            }
        }.navigationTitle("Content Alignment")
    }
}

struct VStackContentSpacingPage: View {
    var body: some View {
        NavigationStack {
            List() {
                Section {
                    VStack(alignment: .leading, spacing:10) {
                        Text("First")
                        Divider()
                        Text("Second")
                        Divider()
                        Text("Third")
                    }
                } header: {
                    Text("Spacing 10")
                }
                Section {
                    VStack(alignment: .leading, spacing:20) {
                        Text("First")
                        Divider()
                        Text("Second")
                        Divider()
                        Text("Third")
                    }
                } header: {
                    Text("Spacing 20")
                }
                Section {
                    VStack(alignment: .leading, spacing:30) {
                        Text("First")
                        Divider()
                        Text("Second")
                        Divider()
                        Text("Third")
                    }
                } header: {
                    Text("Spacing 30")
                }
            }
        }.navigationTitle("Content Spacing")
    }
}

struct VStackExceedsAvailableSpacePage : View {
    var body: some View {
        NavigationStack {
            List() {
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
            }.listStyle(PlainListStyle())
        }.navigationTitle("VStack Exceeds Space")
    }
}

struct LazyVStackExceedsAvailableSpacePage: View {
    var body: some View {
        NavigationStack {
            List() {
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
            }.listStyle(PlainListStyle())
        }.navigationTitle("LazyVStack Exceeds Space")
    }
}


struct VStackTopAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackTopAlignedPage()
    }
}

struct VStackMiddleAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackMiddleAlignedPage()
    }
}

struct VStackBottomAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackBottomAlignedPage()
    }
}

struct VStackContentAlignmentPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentAlignmentPage()
    }
}

struct VStackContentSpacingPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentSpacingPage()
    }
}

struct VStackExceedsAvailableSpacePage_Previews: PreviewProvider {
    static var previews: some View {
        VStackExceedsAvailableSpacePage()
    }
}

struct LazyVStackExceedsAvailableSpacePage_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackExceedsAvailableSpacePage()
    }
}
