//

import SwiftUI

struct TextFittingPage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text("To be, or not to be, that is the question:")
                    .frame(width: 120)
                    .border(.black)
                    .multilineTextAlignment(.leading)
                
                Text("To be, or not to be, that is the question:")
                    .frame(width: 120)
                    .border(.black)
                    .multilineTextAlignment(.center)
                
                Text("To be, or not to be, that is the question:")
                    .frame(width: 120)
                    .border(.black)
                    .multilineTextAlignment(.trailing)

                Text("Brevity is the soul of wit.")
                    .frame(width: 120)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text("Brevity is the soul of wit.")
                    .frame(width: 120)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.middle)
                
                Text("Brevity is the soul of wit.")
                    .frame(width: 120)
                    .border(.black)
                    .lineLimit(1)
                    .truncationMode(.head)
                
                Text("Brevity is the soul of wit.")
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
                    .frame(width: 120)
                    .border(.black)
                
            }
        }.navigationTitle("Text Fitting")
    }
}

#Preview {
    TextFittingPage()
}
