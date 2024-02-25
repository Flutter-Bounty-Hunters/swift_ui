import SwiftUI

struct VStackTopAlignedPage : View {
    var body: some View {
        VStack() {
            Text("First")
            Text("Second")
            Text("Third")
            
            Spacer()
        }
    }
}

struct VStackMiddleAlignedPage : View {
    var body: some View {
        VStack() {
            Text("First")
            Text("Second")
            Text("Third")
        }
    }
}

struct VStackBottomAlignedPage : View {
    var body: some View {
        VStack() {
            Spacer()
            
            Text("First")
            Text("Second")
            Text("Third")
        }
    }
}

struct VStackContentAlignment: View {
    var body: some View {
        Section{
            VStack(alignment:.leading) {
                Text("First")
                Text("Second").border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                Text("Third")
            }.border(Color.black)
        } header: {
            Text("Content Left Aligned").font(.title2)
        }
        Spacer()
        Section {
            VStack(alignment:.center) {
                Text("First")
                Text("Second").border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                Text("Third")
            }.border(Color.black)
        } header: {
            Text("Content Center Aligned").font(.title2)
        }
        Spacer()
        Section {
            VStack(alignment:.trailing) {
                Text("First")
                Text("Second").border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                Text("Third")
            }.border(Color.black)
        } header: {
            Text("Content Right Aligned").font(.title2)
        }
    }
}

struct VStackContentSpacing: View {
    var body: some View {
        Section {
            
            VStack(spacing:10) {
                Text("First")
                Text("Second").padding(.horizontal, 20).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                Text("Third")
            }.border(Color.black)
        } header: {
            Text("Spacing 10").font(.title2)
        }
        Spacer()
        Section {
            VStack(spacing:20) {
                Text("First")
                Text("Second").padding(.horizontal, 20).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                Text("Third")
            }.border(Color.black)
        } header: {
            Text("Spacing 20").font(.title2)
        }
        Spacer()
        Section {
            VStack(spacing:30) {
                Text("First")
                Text("Second").padding(.horizontal, 20).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                Text("Third")
            }.border(Color.black)
        } header: {
            Text("Spacing 30").font(.title2)
        }
    }
}

struct VStackExceedsAvailableSpaceAlignedPage : View {
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
        VStackExceedsAvailableSpaceAlignedPage()
    }
}
