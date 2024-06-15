import SwiftUI

struct EllipsePage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Ellipse with solid fill
                Ellipse()
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
                
                // Ellipse with gradient fill
                Ellipse()
                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 200, height: 100)
                
                // Ellipse with solid stroke
                Ellipse()
                    .stroke(Color.red, lineWidth: 4)
                    .frame(width: 200, height: 100)
                
                // Ellipse with gradient stroke
                Ellipse()
                    .stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 14)
                    .frame(width: 200, height: 100)
                
                // Ellipse with shadow
                Ellipse()
                    .fill(Color.purple)
                    .shadow(color: .gray, radius: 10, x: 10, y: 10)
                    .frame(width: 200, height: 100)
                
            }.frame(width: 300)
        }
    }
}

struct EllipsePage_Previews: PreviewProvider {
    static var previews: some View {
        EllipsePage()
    }
}

