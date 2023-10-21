import SwiftUI

struct MotionPage: View {
    
    var body: some View {
        NavigationStack {
            List() {
                TodoLink(label: "Springs")
            }.navigationTitle("Motion")
        }
    }
}

struct MotionPage_Previews: PreviewProvider {
    static var previews: some View {
        MotionPage()
    }
}
