import SwiftUI

struct RectanglePage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Rectangle with solid fill
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
                
                // Rectangle with gradient fill
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 200, height: 100)
                
                // Rectangle with solid stroke
                Rectangle()
                    .stroke(Color.red, lineWidth: 4)
                    .frame(width: 200, height: 100)
                
                // Rectangle with gradient stroke
                Rectangle()
                    .stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 14)
                    .frame(width: 200, height: 100)
                
                // Rectangle with shadow
                Rectangle()
                    .fill(Color.purple)
                    .shadow(color: .gray, radius: 10, x: 10, y: 10)
                    .frame(width: 200, height: 100)
                
            }.frame(width: 300)
        }
    }
}

struct RectanglePage_Previews: PreviewProvider {
    static var previews: some View {
        RectanglePage()
    }
}

