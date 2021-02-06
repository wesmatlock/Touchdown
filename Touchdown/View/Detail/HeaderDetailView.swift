import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 6, content: {
        Text("Protective Gear")

        Text(sampleProduct.name)
          .font(.largeTitle)
          .fontWeight(.black)
      })
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
          .previewLayout(.sizeThatFits)
          .padding()
          .background(Color.gray)
    }
}
