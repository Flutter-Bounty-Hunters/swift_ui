import SwiftUI

struct ZStackStaggeredSquares : View {
  let colors: [Color] =
      [.red, .orange, .yellow, .green, .blue, .purple]
  
  var body: some View {
    ZStack {
            ForEach(0..<colors.count) {
                Rectangle()
                    .fill(colors[$0])
                    .frame(width: 100, height: 100)
                    .offset(x: CGFloat($0) * 10.0,
                            y: CGFloat($0) * 10.0)
            }
        }
  }
}

struct ZStackTopAlignedPage_Previews: PreviewProvider {
    static var previews: some View {
      ZStackStaggeredSquares()
    }
}
