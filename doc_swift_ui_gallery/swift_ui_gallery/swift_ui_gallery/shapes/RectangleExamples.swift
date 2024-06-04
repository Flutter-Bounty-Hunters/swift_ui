import SwiftUI

struct RectanglePage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Basic rectangle
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
                
                // Rectangle with stroke
                Rectangle()
                    .stroke(Color.red, lineWidth: 4)
                    .frame(width: 200, height: 100)
                
                // Rectangle with rounded corners
                Rectangle()
                    .fill(Color.green)
                    .cornerRadius(20)
                    .frame(width: 200, height: 100)
                
                // Rectangle with gradient fill
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 200, height: 100)
                
                // Rectangle with shadow
                Rectangle()
                    .fill(Color.purple)
                    .shadow(color: .gray, radius: 10, x: 0, y: 10)
                    .frame(width: 200, height: 100)
            }
        }
    }
}

struct RectanglePage_Previews: PreviewProvider {
    static var previews: some View {
        RectanglePage()
    }
}

