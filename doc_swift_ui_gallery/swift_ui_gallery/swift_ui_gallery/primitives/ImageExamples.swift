//

import SwiftUI

struct ImageExamples: View {
    var body: some View {
        // Simplest image display - just the bitmap
//        Image("logo")
        
        // Image with accessibility label
//        Image("logo", label: Text("Some Label"))
        
//        Image("logo")
//            .resizable(capInsets: EdgeInsets(top: 48, leading: 0, bottom: 48, trailing: 48))
//            .frame(width: 125, height: 125)
        
        Image(systemName: "swift")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
    }
}

struct ImageExamples_Previews: PreviewProvider {
    static var previews: some View {
        ImageExamples()
    }
}
