//

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
