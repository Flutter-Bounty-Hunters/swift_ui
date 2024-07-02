import SwiftUI

struct ShadowPage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                
                Rectangle()
                    .fill(Color.purple)
                    .shadow(color: .gray, radius: 10, x: 10, y: 10)
                    .frame(width: 200, height: 100)
                
                Ellipse()
                    .fill(Color.yellow)
                    .shadow(color: .gray, radius: 10, x: 10, y: 10)
                    .frame(width: 200, height: 100)
                
                Star(points: 5)
                    .stroke(Color.blue, lineWidth: 5)
                    .frame(width: 200, height: 200)
                    .shadow(color: .gray, radius: 10, x: 10, y: 10)
                    
                Ellipse()
                    .stroke(Color.red, lineWidth: 5)
                    .shadow(color: .gray, radius: 10, x: 10, y: 10)
                    .frame(width: 200, height: 100)
                
            }.frame(width: 300)
        }
    }
}

struct Star: Shape {
    let points: Int
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let starExtrusion: CGFloat = 0.5
        let angle = .pi / Double(points)
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let radius = min(rect.width, rect.height) / 2
        
        for i in 0..<2 * points {
            let rotation = Double(i) * angle
            let position = CGPoint(
                x: center.x + CGFloat(cos(rotation) * radius * (i % 2 == 0 ? 1 : starExtrusion)),
                y: center.y + CGFloat(sin(rotation) * radius * (i % 2 == 0 ? 1 : starExtrusion))
            )
            
            if i == 0 {
                path.move(to: position)
            } else {
                path.addLine(to: position)
            }
        }
        
        path.closeSubpath()
        
        return path
    }
}

struct ShadowPage_Previews: PreviewProvider {
    static var previews: some View {
        ShadowPage()
    }
}

