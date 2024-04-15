import SwiftUI

struct ZStackDemo: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
    var body: some View {
        NavigationStack {
            ZStack {
                ForEach(0..<colors.count) {
                    index in
                    Rectangle()
                        .fill(colors[index])
                        .frame(width: 100, height: 100)
                        .offset(x: CGFloat(index) * 10.0, y: CGFloat(index) * 10.0)
                }
            }
        }.navigationTitle("ZStack Demo")
    }
}

struct ZStackDemo_Previews: PreviewProvider {
    static var previews: some View {
        ZStackDemo()
    }
}

struct ZStackTopAlignment: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Rectangle().fill(.red).frame(width: 200, height: 200)
                Rectangle().fill(.green).frame(width: 100, height: 100)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
            }
        }.navigationTitle("ZStack Top Alignment")
    }
}

struct ZStackTopAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ZStackTopAlignment()
    }
}

struct ZStackTopLeadingAlignment: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                Rectangle().fill(.red).frame(width: 200, height: 200)
                Rectangle().fill(.green).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
            }
        }.navigationTitle("ZStack Top Leading Alignment")
    }
}

struct ZStackTopLeadingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ZStackTopLeadingAlignment()
    }
}

struct ZStackTopTrailingAlignment: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topTrailing) {
                Rectangle().fill(.red).frame(width: 200, height: 200)
                Rectangle().fill(.green).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
            }
        }.navigationTitle("ZStack Top Trailing Alignment")
    }
}

struct ZStackTopTrailingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ZStackTopTrailingAlignment()
    }
}

struct ZStackCenterAlignment: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .center) {
                Rectangle().fill(.red).frame(width: 200, height: 200)
                Rectangle().fill(.green).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
            }
        }.navigationTitle("ZStack Center Alignment")
    }
}

struct ZStackCenterAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ZStackCenterAlignment()
    }
}

struct ZStackBottomAlignment: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Rectangle().fill(.red).frame(width: 200, height: 200)
                Rectangle().fill(.green).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
            }
        }.navigationTitle("ZStack Bottom Alignment")
    }
}

struct ZStackBottomAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ZStackBottomAlignment()
    }
}

struct ZStackBottomLeadingAlignment: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomLeading) {
                Rectangle().fill(.red).frame(width: 200, height: 200)
                Rectangle().fill(.green).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
            }
        }.navigationTitle("ZStack Bottom Leading Alignment")
    }
}

struct ZStackBottomLeadingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ZStackBottomLeadingAlignment()
    }
}

struct ZStackBottomTrailingAlignment: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                Rectangle().fill(.red).frame(width: 200, height: 200)
                Rectangle().fill(.green).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
            }
        }.navigationTitle("ZStack Bottom Trailing Alignment")
    }
}

struct ZStackBottomTrailingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ZStackBottomTrailingAlignment()
    }
}
