import SwiftUI

struct FooterView: View {
  // MARK: - PROPERTIES

  // MARK: - BODY
  var body: some View {
    VStack {
      Text("We offer the most cutting edge comfortable, lightweight and durable football helmetsin the market at affordable prices")
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
        .layoutPriority(2)

      Image("logo-lineal")
        .renderingMode(.template)
        .foregroundColor(.gray)
        .layoutPriority(0)

      Text("Copyright © Wesley Matlock\nAll rights reserved")
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
        .layoutPriority(1
        )

    }//: VSTACK
  }
}

// MARK: - PREVIEW
struct FooterView_Previews: PreviewProvider {
  static var previews: some View {
    FooterView()
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}
