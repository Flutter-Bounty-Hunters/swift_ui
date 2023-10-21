//

import SwiftUI

struct TodoPage: View {
    var body: some View {
        Text("This page still needs to be spec'd and built. Wanna hepl?")
            .multilineTextAlignment(.center)
    }
}

struct TodoLink: View {
    let label: String
    
    var body: some View {
        NavigationLink {
            TodoPage()
        } label: {
            Text(label)
        }
    }
}

struct TodoPage_Previews: PreviewProvider {
    static var previews: some View {
        TodoPage()
    }
}
